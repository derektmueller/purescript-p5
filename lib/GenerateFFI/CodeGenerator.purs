module GenerateFFI.CodeGenerator 
  ( generateP5
  , generateForeignJSModule 
  , generateUnsupportedMethodList
  ) where

import Prelude
import Data.String.Utils (mapChars)
import Data.Array.NonEmpty (toArray, fromNonEmpty)
import Data.String (toUpper, drop, take)
import Data.Maybe (Maybe(..), maybe)
import Data.Array 
  (filter, fold, intercalate, length, nub, (:))
import Data.Either (Either(..), note)
import Data.Traversable (traverse)
import Data.Foldable (any)
import GenerateFFI.Parser 
  (P5Doc(..), P5Method, P5Type(..)
  , isUnsupported
  , typeIsUnsupported
  , typeIsMaybe
  , typeIsOr
  , typeIsConstant
  , Param)
import Debug.Trace (trace)

toUpperCaseInitial :: String -> String
toUpperCaseInitial str = do
  let head = take 1 str
      tail = drop 1 str
  toUpper head <> tail

titleCaseConstant :: String -> String -> String
titleCaseConstant fnName paramName = 
  toUpperCaseInitial fnName <> toUpperCaseInitial paramName

generateP5TypeConstructor :: P5Type -> Maybe String
generateP5TypeConstructor P5Boolean = Just "Boolean"
generateP5TypeConstructor P5Effect = Just "(Effect Unit)"
generateP5TypeConstructor P5Integer = Just "Int"
generateP5TypeConstructor P5NumberArray = Just "(Array Number)"
generateP5TypeConstructor P5Number = Just "Number"
generateP5TypeConstructor P5P5 = Just "P5"
generateP5TypeConstructor P5StringArray = Just "(Array String)"
generateP5TypeConstructor P5String = Just "String"
generateP5TypeConstructor P5Vector = Just "Vector"
generateP5TypeConstructor P5Color = Just "Color"
generateP5TypeConstructor P5Image = Just "Image"
generateP5TypeConstructor (P5Constant fnName paramName _) = 
  Just $ titleCaseConstant fnName paramName
generateP5TypeConstructor t@(P5Or p5Type1 p5Type2) = do
  case typeIsUnsupported t of
    true -> do
      typeConstructor1 <- generateP5TypeConstructor p5Type1 
      typeConstructor2 <- generateP5TypeConstructor p5Type2 
      pure $ "UnsupportedProduct(" 
        <> typeConstructor1
        <> "|"
        <> typeConstructor2
        <> ")"
    false ->
      generateProductTypeConstructor t
generateP5TypeConstructor (P5Maybe p5Type) = do
  inner <- generateP5TypeConstructor p5Type
  Just $ "(Maybe " <> inner <> ")"
generateP5TypeConstructor (P5Unsupported str) = 
  Just $ "Unsupported(" <> str <> ")"

p5TypeToIdentifier :: P5Type -> Maybe String
p5TypeToIdentifier P5Boolean = Just "Boolean"
p5TypeToIdentifier P5Integer = Just "Int"
p5TypeToIdentifier P5NumberArray = Just "ArrayNumber"
p5TypeToIdentifier P5Number = Just "Number"
p5TypeToIdentifier P5StringArray = Just "ArrayString"
p5TypeToIdentifier P5String = Just "String"
p5TypeToIdentifier (P5Maybe p5Type) = do
  identifier <- p5TypeToIdentifier p5Type
  Just $ "Maybe" <> identifier
p5TypeToIdentifier P5P5 = Just "P5"
p5TypeToIdentifier P5Vector = Just "Vector"
p5TypeToIdentifier P5Color = Just "Color"
p5TypeToIdentifier P5Image = Just "Image"
p5TypeToIdentifier (P5Or _ _) = Nothing
p5TypeToIdentifier P5Effect = Nothing
p5TypeToIdentifier (P5Constant fnName paramName _) = 
  Just $ titleCaseConstant fnName paramName
p5TypeToIdentifier (P5Unsupported _) = Nothing

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
    fixupName "type" = "_type"
    fixupName "data" = "_data"
    fixupName x' = x'

generateMethodSig :: P5Method -> Either String String
generateMethodSig x = do
  let name = getMethodName x
  let returnType = x.return.p5Type
      paramTypes = getParamTypes x
  typeConstructor <- 
    note ("Failed to generate method signature for "
           <> (intercalate " " $ show <$> paramTypes))
      $ traverse
        generateP5TypeConstructor 
          ([P5P5] <> paramTypes <> [returnType])
  pure $ name <> " :: " 
    <> (intercalate " -> " typeConstructor)

generateMethodBody :: P5Method -> Either String String
generateMethodBody x = do
  let jsName = x.name
      getImplParam = \x' -> do
        let name = getParamName x'
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
  let name = x.name
      returnType = x.return.p5Type
      paramTypes = getParamTypes x
  typeConstructors <-
    note "Failed to generate foreign import" $ 
      traverse generateP5TypeConstructor
        ([P5P5] <> paramTypes <> [returnType])
  pure $
    "foreign import " <> name <> "Impl :: "
    <> "Fn" <> (show $ (1+_) <<< length $ paramTypes) <> " "
    <> (intercalate " " typeConstructors)

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

generateModuleHeader :: Array P5Method -> Either String String
generateModuleHeader xs = do
  types <- Right (<>) 
    <*> generateProductTypes xs 
    <*> generateConstantTypes xs
  let methodNames = getMethodName <$> xs
  pure $ "module P5.Generated\n  ( "
   <> intercalate 
    "\n  , " 
    (((\x -> (x <> "(..)")) <$> types)
      <> methodNames)
   <> "\n  ) where"

productTypeToArray :: P5Type -> Maybe (Array P5Type)
productTypeToArray t@(P5Or p5Type1 p5Type2) = 
  Just $ go t
  where
    go (P5Or p5Type1' p5Type2') = go p5Type1' <> go p5Type2'
    go p5Type = [p5Type]
productTypeToArray p5Type = Nothing

generateProductTypeConstructor :: P5Type -> Maybe String
generateProductTypeConstructor t@(P5Or _ _) = do
  types <- productTypeToArray t
  identifiers <- traverse p5TypeToIdentifier types
  let typeName = intercalate "Or" identifiers
  pure typeName
generateProductTypeConstructor _ = Nothing

generateProductTypeDef :: P5Type -> Maybe String
generateProductTypeDef t@(P5Or _ _) = do
  types <- productTypeToArray t
  typeConstructor <- generateProductTypeConstructor t
  dataConstructors <- 
    (traverse 
      (\x -> do
        termIdentifier <- p5TypeToIdentifier x
        termConstructor <- generateP5TypeConstructor x
        pure $ typeConstructor 
          <> termIdentifier <> " " <> termConstructor)
      types)
  pure 
    $ "data " <> typeConstructor <> " = "
    <> (intercalate " | " dataConstructors)
generateProductTypeDef _ = Nothing

generateConstantTypeDef :: P5Type -> Maybe String
generateConstantTypeDef t@(P5Constant fnName paramName constants) = do
  typeConstructor <- generateP5TypeConstructor t
  let dataConstructors = 
        (\x -> typeConstructor <> toUpper x)
        <$> toArray (fromNonEmpty constants)
  pure 
    $ "data " <> typeConstructor <> " = "
    <> (intercalate " | " dataConstructors)
generateConstantTypeDef _ = Nothing

getUniqueOrTypes :: Array P5Method -> Either String (Array P5Type)
getUniqueOrTypes xs = do
  pure $
    nub 
    $ ((\x -> case x of
        P5Maybe x' -> x'
        x' -> x') <$> _)
    $ filter (typeIsOr)
    $ (fold $ (\x -> getParamTypes x <> [x.return.p5Type]) <$> xs)

flattenType :: P5Type -> Array P5Type
flattenType (P5Maybe x) = flattenType x
flattenType (P5Or x y) = flattenType x <> flattenType y
flattenType x = [x]

getUniqueConstantTypes :: 
  Array P5Method -> Either String (Array P5Type)
getUniqueConstantTypes xs = do
  pure $ nub $ do
    paramType <- fold $ getParamTypes <$> xs
    flattened <- flattenType paramType
    if typeIsConstant flattened then
        pure flattened
      else
        []

generateProductTypes :: Array P5Method -> Either String (Array String)
generateProductTypes xs = do
  productTypes <- getUniqueOrTypes xs
  traverse 
    ((note "Failed to generate product types") 
      <<< generateProductTypeConstructor) productTypes

generateConstantTypes :: 
  Array P5Method -> Either String (Array String)
generateConstantTypes xs = do
  constantTypes <- getUniqueConstantTypes xs
  traverse 
    ((note "Failed to generate constantTypes types") 
      <<< generateP5TypeConstructor) constantTypes

generateTypeDefinitions :: Array P5Method 
  -> Either String (Array String)
generateTypeDefinitions xs = do
  productTypes <- getUniqueOrTypes xs
  productTypeDefs <- traverse 
    ((note "Failed to generate type definition for product") 
      <<< generateProductTypeDef) productTypes
  constantTypes <- getUniqueConstantTypes xs
  constantTypeDefs <- traverse 
    ((note "Failed to generate type definition for constant") 
      <<< generateConstantTypeDef) constantTypes
  pure $ productTypeDefs <> constantTypeDefs

generateP5 :: P5Doc -> Either String String
generateP5 (P5Doc doc) = do
  let imports = 
          [ "import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)"
          , "import Effect (Effect)"
          , "import Prelude (Unit)"
          , "import P5.Types (P5, Vector, Color, Image)"
          , "import Foreign (Foreign, unsafeToForeign)"
          , "import Data.Maybe (Maybe, maybe)"
          , "import Foreign.NullOrUndefined (undefined)"
        ]
      supported = filter (\x -> not (isUnsupported x)) doc
  types <- generateTypeDefinitions supported
  methods <- (traverse generateMethod doc)
  foreignImports <- (traverse generateForeignImport supported)
  header <- generateModuleHeader supported
  pure $ header
    <> "\n" 
    <> "\n" 
    <> (intercalate "\n" imports)
    <> "\n" 
    <> "\n" 
    <> (intercalate "\n" types)
    <> "\n" 
    <> "\n" 
    <> (intercalate "\n" foreignImports)
    <> "\n" 
    <> "\n" 
    <> (intercalate "\n" methods)

generateWrapper :: P5Method -> Either String String
generateWrapper x = do
  let name = getMethodName x
      variables = 
        (\x' -> do
          let paramName = getParamName x'
          case x'.p5Type of
            (P5Maybe (P5Or _ _)) -> paramName <> ".value0 ? "
              <> paramName <> ".value0.value0 : undefined"
            (P5Or _ _) -> paramName <> ".value0"
            (P5Maybe _) -> paramName <> ".value0 ? "
              <> paramName <> ".value0 : undefined"
            _ -> paramName
        ) <$> x.params
      params = getParamNames x
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
    <> name <> "Impl"
    <> " = function(" <> (intercalate ", " ("p" : params)) <> ") {"
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
