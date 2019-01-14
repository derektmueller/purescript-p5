module GenerateFFI.Parser
  ( P5Doc(..)
  , P5Type(..)
  , P5Method
  , FunctionName
  , ParamName
  , Param
  , ReturnType
  , ClassItem
  , isUnsupported
  , typeIsMaybe
  , typeIsOr
  , typeIsConstant
  , typeIsUnsupported
  ) where

import Prelude
import Data.List.Types (NonEmptyList)
import Data.List.NonEmpty as NEL
import Control.Monad.Except.Trans (ExceptT, except, lift, runExceptT)
import Data.NonEmpty (NonEmpty)
import Data.Array.NonEmpty (toNonEmpty)
import Data.String.Regex (Regex, regex, test, match)
import Data.String.Regex.Flags (noFlags, global)
import Data.String.Pattern (Pattern(..))
import Data.String.Common (split)
import Data.Maybe (Maybe(..), maybe)
import Data.Array
import Data.Either (Either(..), note)
import Foreign 
  ( Foreign
  , ForeignError(..)
  , readArray
  , readString
  , readBoolean
  , readUndefined
  , F
  , fail
  )
import Foreign.Index ((!))
import Foreign.Class (class Decode)
import Data.Traversable (traverse, sequence)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Generic.Rep.Ord (genericCompare)
import Debug.Trace (trace)

type FunctionName = String
type ParamName = String

data P5Type = 
  P5P5
  | P5Boolean 
  | P5Camera 
  | P5Effect 
  | P5Element
  | P5Graphics
  | P5Integer 
  | P5IntegerArray
  | P5MediaElement
  | P5Number 
  | P5NumberArray
  | P5PrintWriter
  | P5StringDict
  | P5Font
  | P5Geometry
  | P5Shader 
  | P5String 
  | P5StringArray
  | P5Table
  | P5Or P5Type P5Type
  | P5Maybe P5Type
  | P5Vector
  | P5Color
  | P5Image
  | P5Constant FunctionName ParamName (NonEmpty Array String)
  | P5Unsupported String

type Param = 
  { name :: String,
    description :: String,
    p5Type :: P5Type
  }

type ReturnType =
  { description :: String
  , p5Type :: P5Type
  }

type ClassItem = 
  { name :: Maybe String,
    description :: Maybe String,
    itemType :: Maybe String,
    className :: String,
    params :: Maybe (Array Param),
    return :: ReturnType
  }

type P5Method = 
  { name :: String,
    p5Name :: String,
    description :: Maybe String,
    itemType :: Maybe String,
    className :: String,
    params :: Array Param,
    return :: ReturnType
  }

newtype P5Doc = P5Doc (Array P5Method)

derive instance genericP5Doc :: Generic P5Doc _
derive instance genericP5Type :: Generic P5Type _
derive instance eqP5Type :: Eq P5Type

instance showP5Doc :: Show P5Doc where 
  show x = genericShow x

instance showP5Type :: Show P5Type where 
  show x = genericShow x

instance ordP5Type :: Ord P5Type where 
  compare x1 x2  = genericCompare x1 x2

typeIsUnsupported :: P5Type -> Boolean
typeIsUnsupported (P5Unsupported _) = true
typeIsUnsupported (P5Or p5Type1 p5Type2) =
  typeIsUnsupported p5Type1 || typeIsUnsupported p5Type2
typeIsUnsupported _ = false

typeIsMaybe :: P5Type -> Boolean
typeIsMaybe (P5Maybe _) = true
typeIsMaybe _ = false

typeIsOr :: P5Type -> Boolean
typeIsOr (P5Maybe (P5Or _ _)) = true
typeIsOr (P5Or _ _) = true
typeIsOr _ = false

typeIsConstant :: P5Type -> Boolean
typeIsConstant (P5Constant _ _ _) = true
typeIsConstant _ = false

isUnsupported :: P5Method -> Boolean
isUnsupported x =
  (length $ filter (\p -> typeIsUnsupported p.p5Type) x.params)
    > 0
  || typeIsUnsupported x.return.p5Type

readConstantType :: String -> Maybe String -> Maybe String -> F P5Type
readConstantType description mFnName mName = do
  constantsRegex <- getConstantsRegex
  fnName <- except 
    $ note 
      (NEL.singleton 
        $ ForeignError 
          "Failed to parse constants. Missing function name.")
    mFnName
  name <- except 
    $ note 
      (NEL.singleton 
        $ ForeignError 
          "Failed to parse constants. Missing param name.")
    mName
  mConstants <- except 
    $ note 
      (NEL.singleton 
        $ ForeignError 
          "Failed to parse constants. Bad param description.")
    (constantsRegex `match` description)
  constants <- except 
    $ note 
      (NEL.singleton 
        $ ForeignError 
          "Failed to parse constants.")
    (sequence (toNonEmpty mConstants))
  pure $ P5Constant fnName name constants

readP5Type :: String -> (Maybe String) -> (Maybe String) -> Foreign 
  -> F P5Type
readP5Type description mFnName mName f = do
  str <- readString f
  let typeStrs = sort $ split (Pattern "|") str
      toP5Type = 
        \str' ->
          case str' of
            "Boolean" -> pure P5Boolean
            "p5.Camera" -> pure P5Camera
            "p5.Graphics" -> pure P5Graphics
            "Integer" -> pure P5Integer
            "Integer[]" -> pure P5IntegerArray
            "p5.MediaElement" -> pure P5MediaElement
            "Number" -> pure P5Number
            "Number[]" -> pure P5NumberArray
            "p5.Shader" -> pure P5Shader
            "p5.PrintWriter" -> pure P5PrintWriter
            "p5.StringDict" -> pure P5StringDict
            "p5.Font" -> pure P5Font
            "p5.Geometry" -> pure P5Geometry
            "String" -> pure P5String
            "String[]" -> pure P5StringArray
            "p5.Table" -> pure P5Table
            "p5.Vector" -> pure P5Vector
            "p5.Color" -> pure P5Color
            "p5.Image" -> pure P5Image
            "p5.Element" -> pure P5Element
            "Function" -> pure P5Effect
            "Constant" -> do
              readConstantType description mFnName mName 
            _ -> pure $ P5Unsupported str'
            --_ -> fail $ TypeMismatch "P5Type" str
  p5Types <- traverse toP5Type typeStrs
  case uncons p5Types of
    Just {head: x, tail: xs} -> do
      pure $ foldl (\b a -> P5Or b a) x xs
    Nothing -> do
      case head p5Types of 
        Just x -> pure x
        Nothing -> fail $ TypeMismatch "P5Type" str

getPrivateMethodRegex :: F Regex
getPrivateMethodRegex = do
  let ePrivateRegex = regex "^_" noFlags
  case ePrivateRegex of
    Right regex -> pure regex
    Left e -> fail $ ForeignError e

getConstantsRegex :: F Regex
getConstantsRegex = do
  let eConstantsRegex = regex "[A-Z][A-Z_]+" global
  case eConstantsRegex of
    Right regex -> pure regex
    Left e -> fail $ ForeignError e

classItemToMethod :: ClassItem -> F P5Method
classItemToMethod i = do
  case i.name of  
    Just name -> do 
      let params = maybe [] identity i.params
      pure $ 
        { p5Name: name
        , name: name
        , params: params 
        , description: i.description 
        , itemType: i.itemType 
        , className: i.className 
        , return: i.return 
        }
    Nothing -> fail $ ForeignError "Missing method name"

instance decodeP5Doc :: Decode P5Doc where
  decode value = do
    privateMethodRegex <- getPrivateMethodRegex
    let onlyP5Methods = filter 
          (\i -> i.className == "p5" 
            && i.itemType == Just "method")
        onlyPublic = filter
          (\i -> (test privateMethodRegex i.name) == false)
        methodBlacklist = 
          [ "append" -- deprecated
          , "arrayCopy" -- deprecated
          , "arrayCopy2" -- deprecated
          , "boolean" -- useless
          , "byte2" -- useless - use fmap
          , "char2" -- useless - use fmap
          , "concat" -- deprecated
          , "createCanvas" -- implemented
          , "createNumberDict" -- unsafe
          , "createNumberDict2" -- unsafe
          , "draw" --implemented
          , "join" -- useless - use array method instead
          , "int" -- useless - use fmap
          , "nf2" -- useless -- use fmap
          , "noise" --implemented
          , "print" -- useless -- use log
          , "random2" --implemented
          , "randomGaussian" --implemented
          , "reverse" -- deprecated
          , "setup" -- implemented
          , "shorten" -- deprecated
          , "shuffle" -- deprecated
          , "sort" -- deprecated
          , "splice" -- deprecated
          , "subset" -- deprecated
          , "trim2" -- useless - use fmap
          ]
        removeBlacklisted = filter
          (\i -> not (i.name `elem` methodBlacklist))
        suffixDupMethods :: Array P5Method -> Array P5Method
        suffixDupMethods =
          reverse 
          <<< (\acc -> acc.methods) 
          <$> foldr (\i acc ->
            if i.name == acc.prevMethodName then do
              let newName = 
                    i.name 
                    <> (show (acc.suffix))
              {prevMethodName: i.name
              , suffix: acc.suffix + 1
              , methods: (i {name = newName}) : acc.methods}
            else
              {prevMethodName: i.name
              , suffix: 2
              , methods: i : acc.methods}
          ) {prevMethodName: "", suffix: 0, methods: []}
          <<< reverse
        removeFnsWithTooManyArgs :: Array P5Method -> Array P5Method
        removeFnsWithTooManyArgs = filter
          (\i -> length i.params < 10)
        sortByNameAndParamLength :: Array P5Method -> Array P5Method
        sortByNameAndParamLength = sortBy
          (\i1 i2 -> 
            case compare i1.name i2.name of
              LT -> LT 
              GT -> GT 
              EQ -> compare (length i1.params) (length i2.params)
          )
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
        description <- (x ! "description")
          >>= readUndefined
          >>= traverse readString
        params <- (x ! "params") 
          >>= readUndefined 
          >>= traverse readArray 
          >>= (traverse <<< traverse) (\param -> do
            paramName <- (param ! "name") >>= readString
            description <- (param ! "description") >>= readString
            p5Type <- (param ! "type") 
              >>= readP5Type description name (Just paramName)
            optional <- (param ! "optional") 
              >>= readUndefined
              >>= traverse readBoolean
            pure $ {
              name: paramName,
              description: description,
              p5Type: if (optional == Just true
                          && not (typeIsUnsupported p5Type))
                        then P5Maybe p5Type else p5Type
            }
          )
        mReturn <- (x ! "return")
          >>= readUndefined
          >>= traverse (\doc -> do
            retDesc <- (doc ! "description") >>= readString
            mP5Type <- (doc ! "type") 
              >>= readUndefined
              >>= traverse (readP5Type retDesc name Nothing)
            pure $ {
              description: retDesc,
              p5Type: maybe P5Effect identity mP5Type
            }
          )
        pure $ {
            name: name,
            description: description,
            className: className,
            itemType: itemType,
            params: params,
            return: 
              maybe 
                { description: "Unspecified effects"
                , p5Type: P5Effect }
                identity
                mReturn
          })
    --trace (show (classItems :: Array ClassItem)) $ \_ -> do
    methods <- traverse classItemToMethod (onlyP5Methods classItems)
    pure $ P5Doc 
      ((removeBlacklisted
        <<< suffixDupMethods
        <<< sortByNameAndParamLength
        <<< removeFnsWithTooManyArgs
        <<< onlyPublic) methods)

