module GenerateFFI where

import Prelude
import Effect.Now (nowDateTime)
import Data.Either (Either(..))
import Effect (Effect)
import Effect.Console (log)
import Node.Encoding (Encoding(..))
import Node.FS.Sync (readTextFile, writeTextFile, utimes)
import Foreign (F)
import Foreign.Generic (decodeJSON)
import Control.Monad.Except (runExcept)
import Control.Monad.Except.Trans (ExceptT, except, lift, runExceptT)
import GenerateFFI.Parser (P5Doc)
import GenerateFFI.CodeGenerator (generateP5, generateForeignJSModule)
--import Debug.Trace (trace)

generateFFI :: ExceptT String Effect Unit
generateFFI = do
  json <- lift $ readTextFile UTF8 "./out/data.json"
  let eP5Doc = runExcept $ decodeJSON json :: F P5Doc
  case eP5Doc of
    Right p5Doc -> do
      p5 <- except $ generateP5 p5Doc
      lift $ writeTextFile UTF8 "./src/P5/Generated.purs" p5
      now <- lift $ nowDateTime
      lift $ utimes "./src/P5.js" now now
      js <- except $ generateForeignJSModule p5Doc
      lift $ writeTextFile UTF8 "./src/P5/Generated.js" js
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
