module GenerateFFI.CodeGenerator 
  ( generateP5
  , generateForeignJSModule 
  , generateUnsupportedMethodList
  ) where

import Prelude
import Data.String.Utils (mapChars)
import Data.Maybe (Maybe, maybe)
import Data.Array
import Data.Either (Either)
import Data.Traversable (traverse)
import GenerateFFI.Parser 
  (P5Doc(..), P5Method, P5Type(..)
  , isUnsupported
  , typeIsUnsupported
  , typeIsMaybe
  , Param)
--import Debug.Trace (trace)

generateP5TypeConstructor :: P5Type -> String
generateP5TypeConstructor P5Boolean = "Boolean"
generateP5TypeConstructor P5Effect = "(Effect Unit)"
generateP5TypeConstructor P5Integer = "Int"
generateP5TypeConstructor P5NumberArray = "(Array Number)"
generateP5TypeConstructor P5Number = "Number"
generateP5TypeConstructor P5P5 = "P5"
generateP5TypeConstructor P5StringArray = "(Array String)"
generateP5TypeConstructor P5String = "String"
generateP5TypeConstructor (P5Maybe p5Type) = 
  "(Maybe " <> generateP5TypeConstructor p5Type <> ")"
generateP5TypeConstructor (P5Unsupported str) = 
  "Unsupported(" <> str <> ")"

generateForeignTypeConstructor :: P5Type -> String
generateForeignTypeConstructor (P5Maybe p5Type) = "Foreign"
generateForeignTypeConstructor p5Type = 
  generateP5TypeConstructor p5Type

getMethodName :: P5Method -> String
getMethodName x = x.name

getParamTypes :: P5Method -> Array P5Type 
getParamTypes x = (\x' -> x'.p5Type) <$> x.params

getParamNames :: P5Method -> Array String 
getParamNames x = getParamName <$> x.params

getParamName :: Param -> String 
getParamName = (\x' -> fixupName x'.name)
  where
    fixupName :: String -> String
    fixupName "Height" = "height"
    fixupName x' = x'

generateMethodSig :: P5Method -> Either String String
generateMethodSig x = do
  let name = getMethodName x
  let returnType = x.return.p5Type
      paramTypes = getParamTypes x
  pure $ name <> " :: " 
    <> (intercalate " -> " 
         (generateP5TypeConstructor 
          <$> ([P5P5] <> paramTypes <> [returnType])))

generateMethodBody :: P5Method -> Either String String
generateMethodBody x = do
  let jsName = generateJSName x.name
      getImplParam = \x' -> do
        let name = getParamName x'
        if typeIsMaybe x'.p5Type then
          "(maybe undefined unsafeToForeign " <> name <> ")"
          else
            name

  pure $ x.name 
    <> " p5 "
    <> (intercalate " " (getParamNames x))
    <> " = " 
    <> ("runFn" <> (show $ (1+_) <<< length $ getParamTypes x))
    <> " " 
    <> (jsName <> "Impl")
    <> " p5 " 
    <> (intercalate " " (getImplParam <$> x.params))

generateForeignImport :: P5Method -> Either String String
generateForeignImport x = do
  let name = generateJSName x.name
      returnType = x.return.p5Type
      paramTypes = getParamTypes x
  pure $
    "foreign import " <> name <> "Impl :: "
    <> "Fn" <> (show $ (1+_) <<< length $ paramTypes) <> " "
    <> (intercalate " " 
         (generateForeignTypeConstructor
           <$> ([P5P5] <> paramTypes <> [returnType])))

generateMethodDoc :: P5Method -> Maybe String
generateMethodDoc x = do
  pure 
    $ "-- | " 
    <>  "[p5js.org documentation](https://p5js.org/reference/#/p5/"
    <> x.p5Name
    <> ")"

generateMethod :: P5Method -> Either String String
generateMethod x = do
  if isUnsupported x then do
    methodSig <- generateMethodSig x
    pure $ "-- TODO: unsupported: " <> methodSig <> "\n"

    else do
      methodSig <- generateMethodSig x
      methodBody <- generateMethodBody x
      pure $ 
        maybe "" (\doc -> doc <> "\n") (generateMethodDoc x)
        <> methodSig
        <> "\n" 
        <> methodBody
        <> "\n"

generateModuleHeader :: Array P5Method -> String
generateModuleHeader xs =
  "module P5.Generated\n  ( "
   <> intercalate "\n  , " (getMethodName <$> xs)
     <> "\n  ) where"

generateP5 :: P5Doc -> Either String String
generateP5 (P5Doc doc) = do
  let imports = 
          [ "import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)"
          , "import Effect (Effect)"
          , "import Prelude (Unit)"
          , "import P5.Types (P5)"
          , "import Foreign (Foreign, unsafeToForeign)"
          , "import Data.Maybe (Maybe, maybe)"
          , "import Foreign.NullOrUndefined (undefined)"
        ]
      supported = filter (\x -> not (isUnsupported x)) doc
  methods <- (traverse generateMethod doc)
  foreignImports <- (traverse generateForeignImport supported)
  pure $ generateModuleHeader supported
    <> "\n" 
    <> "\n" 
    <> (intercalate "\n" imports)
    <> "\n" 
    <> "\n" 
    <> (intercalate "\n" foreignImports)
    <> "\n" 
    <> "\n" 
    <> (intercalate "\n" methods)

generateJSName :: String -> String
generateJSName name = name

generateWrapper :: P5Method -> Either String String
generateWrapper x = do
  let name = getMethodName x
      variables = getParamNames x
      generateCall =
        "callP5(p, p." <> x.p5Name <> ", [" 
        <> (intercalate ", " variables) <> "]);"
      generateReturn =
        if x.return.p5Type == P5Effect then
          "  return function() {"
          <> "\n"
          <> "    " <> generateCall
          <> "\n"
          <> "  };"
          <> "\n"
        else
          "  return " <> generateCall
          <> "\n"
  pure $
    "exports." 
    <> (generateJSName name) <> "Impl"
    <> " = function(" <> (intercalate ", " ("p" : variables)) <> ") {"
    <> "\n"
    <> generateReturn
    <> "};"

generateForeignJSModule :: P5Doc -> Either String String
generateForeignJSModule (P5Doc doc) = do
  let supported = filter (\x -> not (isUnsupported x)) doc
      helperMethods = 
        [ "function trimRightUndefined(array) {\n\
           \  return array.filter(function (x, i) {\n\
           \    return i < array.length - 1 || x !== undefined;\n\
           \  });\n\
           \}"
        , "function callP5(p5, method, args) {\n\
           \  return method.apply(\n\
           \    p5, trimRightUndefined(args));\n\
           \}"
        ]

  methods <- (traverse generateWrapper supported)
  pure $ 
    (intercalate "\n" helperMethods)
    <> "\n"
    <> (intercalate "\n" methods)

documentUnsupportedMethod :: P5Method -> Either String String
documentUnsupportedMethod x = do
  methodSig <- generateMethodSig x
  pure $
    "```\n"
    <> methodSig
    <> "\n"
    <> "```"
    <> "\n"
    <> "[p5js.org documentation](https://p5js.org/reference/#/p5/"
    <> x.p5Name
    <> ")"

generateUnsupportedMethodList :: P5Doc -> Either String String
generateUnsupportedMethodList (P5Doc doc) = do
  let unsupported = filter isUnsupported doc
      supported = filter (\x -> not (isUnsupported x)) doc
  methodDoc <- traverse documentUnsupportedMethod unsupported
  pure $ 
    "Progress: implemented **" <> (show $ length supported) 
    <> "** out of **" 
    <> (show $ length supported + length unsupported) 
    <> "** methods\n"
    <> intercalate "\n" methodDoc
