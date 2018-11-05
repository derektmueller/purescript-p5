module GenerateFFI where

import Prelude
import Data.Maybe
import Effect (Effect)
import Effect.Console (log)
import Node.Encoding (Encoding(..))
import Node.FS.Sync (readTextFile)
import Foreign (readArray, readString, readUndefined, F)
import Foreign.Index ((!))
import Foreign.Class (class Decode)
import Foreign.Generic (decodeJSON)
import Data.Traversable (traverse)
import Data.Generic.Rep (class Generic)
import Control.Monad.Except
import Data.Generic.Rep.Show (genericShow)
import Debug.Trace (trace)

type ClassItem = {
    name :: Maybe String,
    className :: String
  }

newtype P5Doc = P5Doc {
    methods :: String
  }

derive instance genericP5Doc :: Generic P5Doc _

instance showP5Doc :: Show P5Doc where 
  show x = genericShow x

instance decodeP5Doc :: Decode P5Doc where
  decode value = do
    classItems <- (value ! "classitems") >>= readArray
    classes <- traverse (\x -> do
      className <- (x ! "class") >>= readString
      name <- (x ! "name") >>= readUndefined
      pure $ {
          name: name,
          className: className
        }
    ) classItems
    trace (show classes) $ \_ -> do
      pure $ P5Doc { methods: "test" }

main :: Effect Unit
main = do
  json <- readTextFile UTF8 "./out/data.json"
  let p5Doc = runExcept $ decodeJSON json :: F P5Doc
  log $ show p5Doc
  pure unit
