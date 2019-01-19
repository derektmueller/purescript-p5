module P5.IO.Input
  ( loadStrings
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import loadStringsImpl :: Fn4 P5 String (Maybe (Effect Unit)) (Maybe (Effect Unit)) (Array String)

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
