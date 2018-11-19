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
import GenerateFFI.Parser (P5Doc(..), P5Method, P5Type(..))
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
generateP5TypeConstructor (P5Unsupported str) = 
  "Unsupported(" <> str <> ")"

getMethodName :: P5Method -> String
getMethodName x = x.name

getParamTypes :: P5Method -> Array P5Type 
getParamTypes x = (\x' -> x'.p5Type) <$> x.params

getParamNames :: P5Method -> Array String 
getParamNames x = (\x' -> x'.name) <$> x.params

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
  pure $ x.name 
    <> " = " 
    <> ("runFn" <> (show $ (1+_) <<< length $ getParamTypes x))
    <> " " 
    <> (jsName <> "Impl")

typeIsUnsupported :: P5Type -> Boolean
typeIsUnsupported (P5Unsupported _) = true
typeIsUnsupported _ = false

isUnsupported :: P5Method -> Boolean
isUnsupported x =
  (length $ filter (\p -> typeIsUnsupported p.p5Type) x.params)
    > 0
  || typeIsUnsupported x.return.p5Type

generateForeignImport :: P5Method -> Either String String
generateForeignImport x = do
  let name = generateJSName x.name
      returnType = x.return.p5Type
      paramTypes = getParamTypes x
  pure $
    "foreign import " <> name <> "Impl :: "
    <> "Fn" <> (show $ (1+_) <<< length $ paramTypes) <> " "
    <> (intercalate " " 
         (generateP5TypeConstructor
           <$> ([P5P5] <> paramTypes <> [returnType])))

generateMethodDoc :: P5Method -> Maybe String
generateMethodDoc x = do
  pure 
    $ "-- | " 
    <>  "[p5js.org documentation](https://p5js.org/reference/#/p5/"
    <> generateP5Name x.name
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
  let imports = [
          "import Data.Function.Uncurried",
          "import Effect (Effect)",
          "import Prelude",
          "import P5.Types (P5)"
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
generateJSName name = 
  mapChars (\x -> 
    case x of
      "'" -> "_"
      x' -> x'
  ) name

generateP5Name :: String -> String
generateP5Name name = 
  mapChars (\x -> 
    case x of
      "'" -> ""
      x' -> x'
  ) name

generateWrapper :: P5Method -> Either String String
generateWrapper x = do
  let name = getMethodName x
      variables = getParamNames x
      generateReturn =
        if x.return.p5Type == P5Effect then
          "  return function() {"
          <> "\n"
          <> "    p." <> (generateP5Name name) <> "(" 
            <> (intercalate ", " variables) <> ");"
          <> "\n"
          <> "  };"
          <> "\n"
        else
          "  return p." <> (generateP5Name name) <> "(" 
            <> (intercalate ", " variables) <> ");"
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
  methods <- (traverse generateWrapper supported)
  pure $ (intercalate "\n" methods)

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
    <> generateP5Name x.name
    <> ")"

generateUnsupportedMethodList :: P5Doc -> Either String String
generateUnsupportedMethodList (P5Doc doc) = do
  let unsupported = filter isUnsupported doc
  methodDoc <- traverse documentUnsupportedMethod unsupported
  pure $ intercalate "\n" methodDoc
