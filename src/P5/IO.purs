module P5.IO
  ( createWriter
  , day
  , hour
  , loadStrings
  , millis
  , minute
  , month
  , saveStrings
  , saveTable
  , second
  , year
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)

foreign import createWriterImpl :: Fn3 P5 String (Maybe String) PrintWriter
foreign import dayImpl :: Fn1 P5 Int
foreign import hourImpl :: Fn1 P5 Int
foreign import loadStringsImpl :: Fn4 P5 String (Maybe (Effect Unit)) (Maybe (Effect Unit)) (Array String)
foreign import millisImpl :: Fn1 P5 Number
foreign import minuteImpl :: Fn1 P5 Int
foreign import monthImpl :: Fn1 P5 Int
foreign import saveStringsImpl :: Fn4 P5 (Array String) String (Maybe String) (Effect Unit)
foreign import saveTableImpl :: Fn4 P5 Table String (Maybe String) (Effect Unit)
foreign import secondImpl :: Fn1 P5 Int
foreign import yearImpl :: Fn1 P5 Int

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createWriter)
createWriter :: P5 -> String -> (Maybe String) -> PrintWriter
createWriter p5 name extension = runFn3 createWriterImpl p5 name extension

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/day)
day :: P5 -> Int
day p5  = runFn1 dayImpl p5 

-- TODO: unsupported: downloadFile :: P5 -> UnsupportedProduct(Unsupported(Blob)|String) -> (Maybe String) -> (Maybe String) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hour)
hour :: P5 -> Int
hour p5  = runFn1 hourImpl p5 

-- TODO: unsupported: httpDo :: P5 -> String -> Unsupported(Object) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpDo2 :: P5 -> String -> (Maybe String) -> (Maybe String) -> Unsupported(Object) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpGet :: P5 -> String -> (Effect Unit) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpGet2 :: P5 -> String -> UnsupportedProduct(Boolean|Unsupported(Object)) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpGet3 :: P5 -> String -> (Maybe String) -> UnsupportedProduct(Boolean|Unsupported(Object)) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpPost :: P5 -> String -> (Effect Unit) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpPost2 :: P5 -> String -> UnsupportedProduct(Boolean|Unsupported(Object)) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpPost3 :: P5 -> String -> (Maybe String) -> UnsupportedProduct(Boolean|Unsupported(Object)) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: loadBytes :: P5 -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Object)

-- TODO: unsupported: loadJSON :: P5 -> String -> (Effect Unit) -> (Maybe (Effect Unit)) -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object))

-- TODO: unsupported: loadJSON2 :: P5 -> String -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object))

-- TODO: unsupported: loadJSON3 :: P5 -> String -> Unsupported(Object) -> (Maybe String) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object))

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loadStrings)
loadStrings :: P5 -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> (Array String)
loadStrings p5 filename callback errorCallback = runFn4 loadStringsImpl p5 filename callback errorCallback

-- TODO: unsupported: loadTable :: P5 -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Object)

-- TODO: unsupported: loadTable2 :: P5 -> String -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Object)

-- TODO: unsupported: loadXML :: P5 -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Object)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/millis)
millis :: P5 -> Number
millis p5  = runFn1 millisImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/minute)
minute :: P5 -> Int
minute p5  = runFn1 minuteImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/month)
month :: P5 -> Int
month p5  = runFn1 monthImpl p5 

-- TODO: unsupported: save :: P5 -> UnsupportedProduct(Unsupported(Object)|String) -> (Maybe String) -> (Maybe BooleanOrString) -> (Effect Unit)

-- TODO: unsupported: saveJSON :: P5 -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object)) -> String -> (Maybe Boolean) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveStrings)
saveStrings :: P5 -> (Array String) -> String -> (Maybe String) -> (Effect Unit)
saveStrings p5 list filename extension = runFn4 saveStringsImpl p5 list filename extension

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveTable)
saveTable :: P5 -> Table -> String -> (Maybe String) -> (Effect Unit)
saveTable p5 table filename options = runFn4 saveTableImpl p5 table filename options

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/second)
second :: P5 -> Int
second p5  = runFn1 secondImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/year)
year :: P5 -> Int
year p5  = runFn1 yearImpl p5 
