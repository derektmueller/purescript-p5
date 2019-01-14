module P5.Image
  ( blend
  , copy
  , copy2
  , createImage
  , filter
  , get
  , image
  , image2
  , imageMode
  , loadPixels
  , noTint
  , saveCanvas
  , set
  , tint
  , tint2
  , tint3
  , tint4
  , tint5
  , updatePixels
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)

foreign import blendImpl :: Fn10 P5 Int Int Int Int Int Int Int Int BlendMode (Effect Unit)
foreign import copyImpl :: Fn9 P5 Int Int Int Int Int Int Int Int (Effect Unit)
foreign import copy2Impl :: Fn10 P5 ElementOrImage Int Int Int Int Int Int Int Int (Effect Unit)
foreign import createImageImpl :: Fn3 P5 Int Int Image
foreign import filterImpl :: Fn3 P5 FilterType (Maybe Number) (Effect Unit)
foreign import getImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) ArrayNumberOrImage
foreign import imageImpl :: Fn6 P5 ElementOrImage Number Number (Maybe Number) (Maybe Number) (Effect Unit)
foreign import image2Impl :: Fn10 P5 ElementOrImage Number Number Number Number Number Number (Maybe Number) (Maybe Number) (Effect Unit)
foreign import imageModeImpl :: Fn2 P5 ImageMode (Effect Unit)
foreign import loadPixelsImpl :: Fn1 P5 (Effect Unit)
foreign import noTintImpl :: Fn1 P5 (Effect Unit)
foreign import saveCanvasImpl :: Fn3 P5 (Maybe String) (Maybe String) (Effect Unit)
foreign import setImpl :: Fn4 P5 Number Number NumberOrArrayNumberOrColorOrImage (Effect Unit)
foreign import tintImpl :: Fn2 P5 String (Effect Unit)
foreign import tint2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import tint3Impl :: Fn2 P5 Color (Effect Unit)
foreign import tint4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import tint5Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import updatePixelsImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/blend)
blend :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> BlendMode -> (Effect Unit)
blend p5 sx sy sw sh dx dy dw dh blendMode = runFn10 blendImpl p5 sx sy sw sh dx dy dw dh blendMode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/copy)
copy :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
copy p5 sx sy sw sh dx dy dw dh = runFn9 copyImpl p5 sx sy sw sh dx dy dw dh

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/copy)
copy2 :: P5 -> ElementOrImage -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
copy2 p5 srcImage sx sy sw sh dx dy dw dh = runFn10 copy2Impl p5 srcImage sx sy sw sh dx dy dw dh

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createImage)
createImage :: P5 -> Int -> Int -> Image
createImage p5 width height = runFn3 createImageImpl p5 width height

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/filter)
filter :: P5 -> FilterType -> (Maybe Number) -> (Effect Unit)
filter p5 filterType filterParam = runFn3 filterImpl p5 filterType filterParam

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/get)
get :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> ArrayNumberOrImage
get p5 x y w h = runFn5 getImpl p5 x y w h

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loadPixels)
loadPixels :: P5 -> (Effect Unit)
loadPixels p5  = runFn1 loadPixelsImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noTint)
noTint :: P5 -> (Effect Unit)
noTint p5  = runFn1 noTintImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveCanvas)
saveCanvas :: P5 -> (Maybe String) -> (Maybe String) -> (Effect Unit)
saveCanvas p5 filename extension = runFn3 saveCanvasImpl p5 filename extension

-- TODO: unsupported: saveCanvas2 :: P5 -> UnsupportedProduct(Unsupported(HTMLCanvasElement)|Element) -> (Maybe String) -> (Maybe String) -> (Effect Unit)

-- TODO: unsupported: saveFrames :: P5 -> String -> String -> Number -> Number -> Unsupported(Function(Array)) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/set)
set :: P5 -> Number -> Number -> NumberOrArrayNumberOrColorOrImage -> (Effect Unit)
set p5 x y c = runFn4 setImpl p5 x y c

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/updatePixels)
updatePixels :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
updatePixels p5 x y w h = runFn5 updatePixelsImpl p5 x y w h
