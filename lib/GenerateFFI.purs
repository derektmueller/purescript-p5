module GenerateFFI where

import Control.Monad.Except (runExcept)
import Control.Monad.Except.Trans 
  (ExceptT(..), except, lift, runExceptT)
import Data.Either (Either(..))
import Data.Maybe
import Data.Traversable
import Effect.Console (log, logShow)
import Effect (Effect)
import Effect.Exception
import Foreign (F)
import Foreign.Generic (decodeJSON)
import GenerateFFI.CodeGenerator 
  ( generateP5
  , generateForeignJSModule
  , generateUnsupportedMethodList )
import GenerateFFI.Parser 
  ( P5Doc
  , getModuleNames
  , filterByModuleName
  , getSubmoduleNames
  , filterBySubmoduleName
  )
import Node.Encoding (Encoding(..))
import Node.FS.Sync (readTextFile, writeTextFile, mkdir, rmdir)
import Prelude

generateFFI :: ExceptT String Effect Unit
generateFFI = do
  json <- lift $ readTextFile UTF8 "./out/data.json"
  let eP5Doc = runExcept $ decodeJSON json :: F P5Doc
  case eP5Doc of
    Right p5Doc -> do
      let modules = getModuleNames p5Doc
      traverse_ (\moduleName -> do
        let p5Doc' = filterByModuleName moduleName p5Doc
            submodules = getSubmoduleNames p5Doc'

        traverse_ (\submoduleName -> do
          let p5Doc'' = filterBySubmoduleName submoduleName p5Doc'
          p5 <- except 
            $ generateP5 moduleName (Just submoduleName) [] p5Doc''
          lift $ catchException (\e -> do
            pure unit
            ) $ mkdir ("./src/P5/" <> moduleName)
          lift $ 
            writeTextFile 
            UTF8 ("./src/P5/" 
              <> moduleName <> "/"
              <> submoduleName <> ".purs") p5
          js <- except $ generateForeignJSModule p5Doc''
          lift $ 
            writeTextFile 
            UTF8 ("./src/P5/" 
              <> moduleName <> "/"
              <> submoduleName <> ".js") js
        ) submodules

        let p5Doc'' = filterBySubmoduleName moduleName p5Doc'
        p5 <- except 
          $ generateP5 moduleName Nothing submodules p5Doc''
        lift $ 
          writeTextFile 
          UTF8 ("./src/P5/" <> moduleName <> ".purs") p5
        js <- except $ generateForeignJSModule p5Doc'
        lift $ 
          writeTextFile 
          UTF8 ("./src/P5/" <> moduleName <> ".js") js
        pure unit
      ) modules

      unsupported <- except $ generateUnsupportedMethodList p5Doc
      lift $ writeTextFile UTF8 "./unsupported.md" unsupported

      pure unit
    Left e -> do
      lift $ log $ show e
  pure unit

main :: Effect Unit
main = do
  eUnit <- runExceptT $ generateFFI
  case eUnit of
    Right _ -> pure unit
    Left e -> log $ show e
  pure unit
