module P5.Image.LoadingAndDisplaying
  ( image
  , image2
  , imageMode
  , noTint
  , tint
  , tint2
  , tint3
  , tint4
  , tint5
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import imageImpl :: Fn6 P5 ElementOrImage Number Number (Maybe Number) (Maybe Number) (Effect Unit)
foreign import image2Impl :: Fn10 P5 ElementOrImage Number Number Number Number Number Number (Maybe Number) (Maybe Number) (Effect Unit)
foreign import imageModeImpl :: Fn2 P5 ImageMode (Effect Unit)
foreign import noTintImpl :: Fn1 P5 (Effect Unit)
foreign import tintImpl :: Fn2 P5 String (Effect Unit)
foreign import tint2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import tint3Impl :: Fn2 P5 Color (Effect Unit)
foreign import tint4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import tint5Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/image)
image :: P5 -> ElementOrImage -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
image p5 img x y width height = runFn6 imageImpl p5 img x y width height

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/image)
image2 :: P5 -> ElementOrImage -> Number -> Number -> Number -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
image2 p5 img dx dy dWidth dHeight sx sy sWidth sHeight = runFn10 image2Impl p5 img dx dy dWidth dHeight sx sy sWidth sHeight

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/imageMode)
imageMode :: P5 -> ImageMode -> (Effect Unit)
imageMode p5 mode = runFn2 imageModeImpl p5 mode

-- TODO: unsupported: loadImage :: P5 -> String -> Unsupported(function(p5.Image)) -> Unsupported(Function(Event)) -> Image

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noTint)
noTint :: P5 -> (Effect Unit)
noTint p5  = runFn1 noTintImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint :: P5 -> String -> (Effect Unit)
tint p5 value = runFn2 tintImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint2 :: P5 -> (Array Number) -> (Effect Unit)
tint2 p5 values = runFn2 tint2Impl p5 values

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint3 :: P5 -> Color -> (Effect Unit)
tint3 p5 color = runFn2 tint3Impl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
tint4 p5 gray alpha = runFn3 tint4Impl p5 gray alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
tint5 p5 v1 v2 v3 alpha = runFn5 tint5Impl p5 v1 v2 v3 alpha
