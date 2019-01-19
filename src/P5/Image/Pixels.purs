module P5.Image.Pixels
  ( blend
  , copy
  , copy2
  , filter
  , get
  , loadPixels
  , set
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
foreign import filterImpl :: Fn3 P5 FilterType (Maybe Number) (Effect Unit)
foreign import getImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) ArrayNumberOrImage
foreign import loadPixelsImpl :: Fn1 P5 (Effect Unit)
foreign import setImpl :: Fn4 P5 Number Number NumberOrArrayNumberOrColorOrImage (Effect Unit)
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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/filter)
filter :: P5 -> FilterType -> (Maybe Number) -> (Effect Unit)
filter p5 filterType filterParam = runFn3 filterImpl p5 filterType filterParam

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/get)
get :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> ArrayNumberOrImage
get p5 x y w h = runFn5 getImpl p5 x y w h

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loadPixels)
loadPixels :: P5 -> (Effect Unit)
loadPixels p5  = runFn1 loadPixelsImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/set)
set :: P5 -> Number -> Number -> NumberOrArrayNumberOrColorOrImage -> (Effect Unit)
set p5 x y c = runFn4 setImpl p5 x y c

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/updatePixels)
updatePixels :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
updatePixels p5 x y w h = runFn5 updatePixelsImpl p5 x y w h
