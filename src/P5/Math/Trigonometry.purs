module P5.Math.Trigonometry
  ( acos
  , angleMode
  , asin
  , atan
  , atan2
  , cos
  , degrees
  , radians
  , sin
  , tan
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import acosImpl :: Fn2 P5 Number Number
foreign import angleModeImpl :: Fn2 P5 AngleMode (Effect Unit)
foreign import asinImpl :: Fn2 P5 Number Number
foreign import atanImpl :: Fn2 P5 Number Number
foreign import atan2Impl :: Fn3 P5 Number Number Number
foreign import cosImpl :: Fn2 P5 Number Number
foreign import degreesImpl :: Fn2 P5 Number Number
foreign import radiansImpl :: Fn2 P5 Number Number
foreign import sinImpl :: Fn2 P5 Number Number
foreign import tanImpl :: Fn2 P5 Number Number

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/acos)
acos :: P5 -> Number -> Number
acos p5 value = runFn2 acosImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/angleMode)
angleMode :: P5 -> AngleMode -> (Effect Unit)
angleMode p5 mode = runFn2 angleModeImpl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/asin)
asin :: P5 -> Number -> Number
asin p5 value = runFn2 asinImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/atan)
atan :: P5 -> Number -> Number
atan p5 value = runFn2 atanImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/atan2)
atan2 :: P5 -> Number -> Number -> Number
atan2 p5 y x = runFn3 atan2Impl p5 y x

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cos)
cos :: P5 -> Number -> Number
cos p5 angle = runFn2 cosImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/degrees)
degrees :: P5 -> Number -> Number
degrees p5 radians = runFn2 degreesImpl p5 radians

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/radians)
radians :: P5 -> Number -> Number
radians p5 degrees = runFn2 radiansImpl p5 degrees

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sin)
sin :: P5 -> Number -> Number
sin p5 angle = runFn2 sinImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tan)
tan :: P5 -> Number -> Number
tan p5 angle = runFn2 tanImpl p5 angle
