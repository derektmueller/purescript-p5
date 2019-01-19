module P5.Typography.LoadingAndDisplaying
  ( loadFont
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import loadFontImpl :: Fn4 P5 String (Maybe (Effect Unit)) (Maybe (Effect Unit)) Font

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loadFont)
loadFont :: P5 -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Font
loadFont p5 path callback onError = runFn4 loadFontImpl p5 path callback onError

-- TODO: unsupported: text :: P5 -> UnsupportedProduct(UnsupportedProduct(UnsupportedProduct(UnsupportedProduct(Unsupported(Array)|Boolean)|Number)|Unsupported(Object))|String) -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)

-- TODO: unsupported: textFont :: P5 -> Unsupported(Object)

-- TODO: unsupported: textFont2 :: P5 -> UnsupportedProduct(Unsupported(Object)|String) -> (Maybe Number) -> (Effect Unit)
