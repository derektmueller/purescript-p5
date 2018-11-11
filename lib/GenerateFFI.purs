module GenerateFFI where

import Prelude
import Data.Identity
import Data.Maybe
import Data.Array
import Data.Either
import Effect (Effect)
import Effect.Console (log)
import Node.Encoding (Encoding(..))
import Node.FS.Sync (readTextFile, writeTextFile)
import Foreign (
  Foreign, ForeignError(..), readArray, readString, readUndefined, F,   fail)
import Foreign.Index ((!))
import Foreign.Class (class Decode)
import Foreign.Generic (decodeJSON)
import Data.Traversable (traverse)
import Data.Generic.Rep (class Generic)
import Control.Monad.Except
import Data.Generic.Rep.Show (genericShow)
import Debug.Trace (trace)
import Control.Monad.Except.Trans

--[ 'Any',
--  'Array',
--  'Blob',
--  'Boolean', x
--  'Constant',
--  'Function',
--  'Function(Array)',
--  'Function(Event)',
--  'HTMLCanvasElement',
--  'Integer', x
--  'Number', x
--  'Number[]', x
--  'Object',
--  'String', x
--  'String[]', x
--  'function(p5.Geometry)',
--  'function(p5.Image)',
--  'p5.Camera',
--  'p5.Color',
--  'p5.Element',
--  'p5.Geometry',
--  'p5.Graphics',
--  'p5.Image',
--  'p5.MediaElement',
--  'p5.Shader',
--  'p5.Table',
--  'p5.Vector' ]

data P5Type = 
  P5P5
  | P5Boolean 
  | P5Effect 
  | P5Integer 
  | P5Number 
  | P5NumberArray
  | P5String 
  | P5StringArray
  | P5Unsupported 

type Param = 
  { name :: String,
    p5Type :: P5Type
  }

type ClassItem = 
  { name :: Maybe String,
    itemType :: Maybe String,
    className :: String,
    params :: Maybe (Array Param),
    return :: Param
  }

newtype P5Doc = P5Doc (Array ClassItem)

derive instance genericP5Doc :: Generic P5Doc _
derive instance genericP5Type :: Generic P5Type _
derive instance eqP5Type :: Eq P5Type

instance showP5Doc :: Show P5Doc where 
  show x = genericShow x

instance showP5Type :: Show P5Type where 
  show x = genericShow x

readP5Type :: Foreign -> F P5Type
readP5Type f = do
  str <- readString f
  case str of
    "Boolean" -> pure P5Boolean
    "Integer" -> pure P5Integer
    "Number" -> pure P5Number
    "Number[]" -> pure P5NumberArray
    "String" -> pure P5String
    "String[]" -> pure P5StringArray
    _ -> pure P5Unsupported
    --_ -> fail $ TypeMismatch "P5Type" str

generateP5TypeConstructor :: P5Type -> String
generateP5TypeConstructor P5Boolean = "Boolean"
generateP5TypeConstructor P5Effect = "(Effect Unit)"
generateP5TypeConstructor P5Integer = "Int"
generateP5TypeConstructor P5NumberArray = "(Array Number)"
generateP5TypeConstructor P5Number = "Number"
generateP5TypeConstructor P5P5 = "P5"
generateP5TypeConstructor P5StringArray = "(Array String)"
generateP5TypeConstructor P5String = "String"
generateP5TypeConstructor _ = ""

getMethodName :: ClassItem -> Either String String
getMethodName x = note "Missing name" x.name

getParamTypes :: ClassItem -> Array P5Type 
getParamTypes x =
  case x.params of
    Just params ->
      (\x -> x.p5Type) <$> params
    Nothing -> []

getParamNames :: ClassItem -> Array String 
getParamNames x =
  case x.params of
    Just params ->
      (\x -> x.name) <$> params
    Nothing -> []

generateMethodSig :: ClassItem -> Either String String
generateMethodSig x = do
  name <- getMethodName x
  let returnType = x.return.p5Type
      paramTypes = getParamTypes x
  pure $ name <> " :: " 
    <> (intercalate " -> " 
         (generateP5TypeConstructor 
          <$> ([P5P5] <> paramTypes <> [returnType])))

generateMethodBody :: ClassItem -> Either String String
generateMethodBody x = do
  name <- getMethodName x
  pure $ name 
    <> " = " 
    <> ("runFn" <> (show $ (1+_) <<< length $ getParamTypes x))
    <> " " 
    <> (name <> "Impl")

generateForeignImport :: ClassItem -> Either String String
generateForeignImport x = do
  name <- getMethodName x
  let returnType = x.return.p5Type
      paramTypes = getParamTypes x
  pure $
    "foreign import " <> name <> "Impl :: "
    <> "Fn" <> (show $ (1+_) <<< length $ paramTypes) <> " "
    <> (intercalate " " 
         (generateP5TypeConstructor
           <$> ([P5P5] <> paramTypes <> [returnType])))


generateMethod :: ClassItem -> Either String String
generateMethod x = do
  methodSig <- generateMethodSig x
  methodBody <- generateMethodBody x
  pure $ 
    methodSig
    <> "\n" 
    <> methodBody
    <> "\n"

generateP5 :: P5Doc -> Either String String
generateP5 (P5Doc doc) = do
  let moduleHeader = "module P5.Generated where"
      imports = [
          "import Data.Function.Uncurried",
          "import Effect (Effect)",
          "import Prelude",
          "import Data.Int",
          "import P5 (P5)"
        ]
  methods <- (traverse generateMethod doc)
  foreignImports <- (traverse generateForeignImport doc)
  pure $ moduleHeader 
    <> "\n" 
    <> "\n" 
    <> (intercalate "\n" imports)
    <> "\n" 
    <> "\n" 
    <> (intercalate "\n" foreignImports)
    <> "\n" 
    <> "\n" 
    <> (intercalate "\n" methods)

generateWrapper :: ClassItem -> Either String String
generateWrapper x = do
  name <- getMethodName x
  let variables = getParamNames x
  pure $
    "exports." 
    <> name <> "Impl"
    <> " = function(p, " <> (intercalate ", " variables) <> ") {"
    <> "\n"
    <> "  return function() {"
    <> "\n"
    <> "    p." <> name <> "(" 
      <> (intercalate ", " variables) <> ");"
    <> "\n"
    <> "  };"
    <> "\n"
    <> "};"

generateForeignJSModule :: P5Doc -> Either String String
generateForeignJSModule (P5Doc doc) = do
  methods <- (traverse generateWrapper doc)
  pure $ (intercalate "\n" methods)

instance decodeP5Doc :: Decode P5Doc where
  decode value = do
    let onlyP5Methods = filter 
          (\i -> i.className == "p5" 
            && i.itemType == Just "method"
            && ((length <<< (filter (\p -> 
              p.p5Type == P5Unsupported))) <$> i.params) == Just 0)
        removeDupMethods = nubByEq 
          (\i1 i2 -> i1.name == i2.name)
    classItems <- (value ! "classitems") 
      >>= readArray
      >>= traverse (\x -> do
        className <- (x ! "class") >>= readString
        name <- (x ! "name") 
          >>= readUndefined
          >>= traverse readString
        itemType <- (x ! "itemtype") 
          >>= readUndefined
          >>= traverse readString
        params <- (x ! "params") 
          >>= readUndefined 
          >>= traverse readArray 
          >>= (traverse <<< traverse) (\param -> do
            name <- (param ! "name") >>= readString
            p5Type <- (param ! "type") 
              >>= readP5Type
            pure $ {
              name: name,
              p5Type: p5Type
            }
          )
        pure $ {
            name: name,
            className: className,
            itemType: itemType,
            params: params,
            return: {name: "return", p5Type: P5Effect}
          })
    --trace (show (classItems :: Array ClassItem)) $ \_ -> do
    pure $ P5Doc ((removeDupMethods <<< onlyP5Methods) classItems)

main :: Effect Unit
main = do
  json <- readTextFile UTF8 "./out/data.json"
  let eP5Doc = runExcept $ decodeJSON json :: F P5Doc
  case eP5Doc of
    Left e -> 
      log $ show e
    Right p5Doc -> do
      let eP5 = generateP5 p5Doc
      case eP5 of
        Right p5 -> do
          writeTextFile UTF8 "./src/P5/Generated.purs" p5
          let eJS = generateForeignJSModule p5Doc
          case eJS of
            Right js -> do
              writeTextFile UTF8 "./src/P5/Generated.js" js
            Left e -> log $ show e
        Left e -> log $ show e
  pure unit
