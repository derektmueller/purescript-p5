module GenerateFFI.Parser
  ( P5Doc(..)
  , P5Type(..)
  , P5Method
  , Param
  , ReturnType
  , ClassItem
  ) where

import Prelude
import Data.String.Regex (Regex, regex, test)
import Data.String.Regex.Flags (noFlags)
import Data.Maybe (Maybe(..), maybe)
import Data.Array
import Data.Either (Either(..))
import Foreign 
  ( Foreign
  , ForeignError(..)
  , readArray
  , readString
  , readUndefined
  , F
  , fail
  )
import Foreign.Index ((!))
import Foreign.Class (class Decode)
import Data.Traversable (traverse)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
--import Debug.Trace (trace)

data P5Type = 
  P5P5
  | P5Boolean 
  | P5Effect 
  | P5Integer 
  | P5Number 
  | P5NumberArray
  | P5String 
  | P5StringArray
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
    _ -> pure $ P5Unsupported str
    --_ -> fail $ TypeMismatch "P5Type" str

getPrivateMethodRegex :: F Regex
getPrivateMethodRegex = do
  let ePrivateRegex = regex "^_" noFlags
  case ePrivateRegex of
    Right regex -> pure regex
    Left e -> fail $ ForeignError e

classItemToMethod :: ClassItem -> F P5Method
classItemToMethod i = do
  case i.name of  
    Just name -> 
      case i.params of
        Just params -> pure $ i { name = name, params = params }
        Nothing -> pure $ i { name = name, params = [] }
    Nothing -> fail $ ForeignError "Missing method name"

instance decodeP5Doc :: Decode P5Doc where
  decode value = do
    privateMethodRegex <- getPrivateMethodRegex
    let onlyP5Methods = filter 
          (\i -> i.className == "p5" 
            && i.itemType == Just "method")
        onlyPublic = filter
          (\i -> (test privateMethodRegex i.name) == false)
        removeBlacklisted = filter
          (\i -> not (i.name `elem` ["draw", "setup"]))
        suffixDupMethods :: Array P5Method -> Array P5Method
        suffixDupMethods =
          reverse 
          <<< (\acc -> acc.methods) 
          <$> foldr (\i acc ->
            if i.name == acc.prevMethodName then do
              let newName = 
                    i.name 
                    <> (fold ((\_ -> "'") <$> (0..acc.duplicates)))
              {prevMethodName: i.name
              , duplicates: acc.duplicates + 1
              , methods: (i {name = newName}) : acc.methods}
            else
              {prevMethodName: i.name
              , duplicates: 0
              , methods: i : acc.methods}
          ) {prevMethodName: "", duplicates: 0, methods: []}
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
            pure $ {
              name: paramName,
              p5Type: p5Type
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

