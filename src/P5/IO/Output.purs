module P5.IO.Output
  ( createWriter
  , saveStrings
  , saveTable
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import createWriterImpl :: Fn3 P5 String (Maybe String) PrintWriter
foreign import saveStringsImpl :: Fn4 P5 (Array String) String (Maybe String) (Effect Unit)
foreign import saveTableImpl :: Fn4 P5 Table String (Maybe String) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createWriter)
createWriter :: P5 -> String -> (Maybe String) -> PrintWriter
createWriter p5 name extension = runFn3 createWriterImpl p5 name extension

-- TODO: unsupported: downloadFile :: P5 -> UnsupportedProduct(Unsupported(Blob)|String) -> (Maybe String) -> (Maybe String) -> (Effect Unit)

-- TODO: unsupported: save :: P5 -> UnsupportedProduct(Unsupported(Object)|String) -> (Maybe String) -> (Maybe BooleanOrString) -> (Effect Unit)

-- TODO: unsupported: saveJSON :: P5 -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object)) -> String -> (Maybe Boolean) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveStrings)
saveStrings :: P5 -> (Array String) -> String -> (Maybe String) -> (Effect Unit)
saveStrings p5 list filename extension = runFn4 saveStringsImpl p5 list filename extension

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveTable)
saveTable :: P5 -> Table -> String -> (Maybe String) -> (Effect Unit)
saveTable p5 table filename options = runFn4 saveTableImpl p5 table filename options
