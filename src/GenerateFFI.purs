module GenerateFFI where

import Prelude
import Data.Maybe
import Effect (Effect)
import Effect.Console (log)
import Node.Encoding (Encoding(..))
import Node.FS.Sync (readTextFile)
import Foreign (Foreign, ForeignError(..), readArray, readString, 
  readUndefined, F)
import Foreign.Index ((!))
import Foreign.Class (class Decode)
import Foreign.Generic (decodeJSON)
import Data.Traversable (traverse)
import Data.Generic.Rep (class Generic)
import Control.Monad.Except
import Data.Generic.Rep.Show (genericShow)
import Debug.Trace (trace)

--[ 'Any',
--  'Array',
--  'Blob',
--  'Boolean',
--  'Constant',
--  'Function',
--  'Function(Array)',
--  'Function(Event)',
--  'HTMLCanvasElement',
--  'Integer',
--  'Number',
--  'Number[]',
--  'Object',
--  'String',
--  'String[]',
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

data P5Type = P5Number

type Param = 
  { name :: String,
    p5Type :: P5Type
  }

type ClassItem = 
  { name :: Maybe String,
    itemType :: Maybe String,
    className :: String,
    params :: Maybe (Array Param)
  }

newtype P5Doc = P5Doc 
  { methods :: String
  }

derive instance genericP5Doc :: Generic P5Doc _
derive instance genericP5Type :: Generic P5Type _

instance showP5Doc :: Show P5Doc where 
  show x = genericShow x

instance showP5Type :: Show P5Type where 
  show x = genericShow x

readP5Type :: Foreign -> F P5Type
readP5Type f = do
  str <- readString f
  case str of
    "Number" -> pure P5Number
    _ -> pure P5Number -- ForeignError "Invalid P5 Type"

instance decodeP5Doc :: Decode P5Doc where
  decode value = do
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
            params: params
          })
    trace (show (classItems :: Array ClassItem)) $ \_ -> do
      pure $ P5Doc { methods: "test" }

main :: Effect Unit
main = do
  json <- readTextFile UTF8 "./out/data.json"
  let p5Doc = runExcept $ decodeJSON json :: F P5Doc
  log $ show p5Doc
  pure unit
