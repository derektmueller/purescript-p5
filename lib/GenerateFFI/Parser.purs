module GenerateFFI.Parser
  ( P5Doc(..)
  , P5Type(..)
  , P5Method
  , Param
  , ReturnType
  , ClassItem
  , isUnsupported
  , typeIsMaybe
  , typeIsOr
  , typeIsUnsupported
  ) where

import Prelude
import Data.String.Regex (Regex, regex, test)
import Data.String.Regex.Flags (noFlags)
import Data.String.Pattern (Pattern(..))
import Data.String.Common (split)
import Data.Maybe (Maybe(..), maybe)
import Data.Array
import Data.Either (Either(..))
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
import Data.Traversable (traverse)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Generic.Rep.Ord (genericCompare)
import Debug.Trace (trace)

data P5Type = 
  P5P5
  | P5Boolean 
  | P5Effect 
  | P5Integer 
  | P5Number 
  | P5NumberArray
  | P5String 
  | P5StringArray
  | P5Or P5Type P5Type
  | P5Maybe P5Type
  | P5Vector
  | P5Color
  | P5Image
  | P5Unsupported String

type Param = 
  { name :: String,
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

isUnsupported :: P5Method -> Boolean
isUnsupported x =
  (length $ filter (\p -> typeIsUnsupported p.p5Type) x.params)
    > 0
  || typeIsUnsupported x.return.p5Type

readP5Type :: Foreign -> F P5Type
readP5Type f = do
  str <- readString f
  let typeStrs = sort $ split (Pattern "|") str
      toP5Type = 
        \str' ->
          case str' of
            "Boolean" -> P5Boolean
            "Integer" -> P5Integer
            "Number" -> P5Number
            "Number[]" -> P5NumberArray
            "String" -> P5String
            "String[]" -> P5StringArray
            "p5.Vector" -> P5Vector
            "p5.Color" -> P5Color
            "p5.Image" -> P5Image
            "Function" -> P5Effect
            _ -> P5Unsupported str'
            --_ -> fail $ TypeMismatch "P5Type" str
      p5Types = toP5Type <$> typeStrs
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
          [ "draw"
          , "setup"
          , "strokeJoin"
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
          (\i -> length i.params <= 10)
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
            p5Type <- (param ! "type") 
              >>= readP5Type
            optional <- (param ! "optional") 
              >>= readUndefined
              >>= traverse readBoolean
            pure $ {
              name: paramName,
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
              >>= traverse readP5Type
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
      ((suffixDupMethods
        <<< sortByNameAndParamLength
        <<< removeFnsWithTooManyArgs
        <<< removeBlacklisted
        <<< onlyPublic) methods)

