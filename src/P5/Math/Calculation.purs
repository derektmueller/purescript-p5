module P5.Math.Calculation
  ( abs
  , ceil
  , constrain
  , dist
  , dist2
  , exp
  , floor
  , lerp
  , log
  , mag
  , map
  , max
  , max2
  , min
  , min2
  , norm
  , pow
  , round
  , sq
  , sqrt
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import absImpl :: Fn2 P5 Number Number
foreign import ceilImpl :: Fn2 P5 Number Int
foreign import constrainImpl :: Fn4 P5 Number Number Number Number
foreign import distImpl :: Fn5 P5 Number Number Number Number Number
foreign import dist2Impl :: Fn7 P5 Number Number Number Number Number Number Number
foreign import expImpl :: Fn2 P5 Number Number
foreign import floorImpl :: Fn2 P5 Number Int
foreign import lerpImpl :: Fn4 P5 Number Number Number Number
foreign import logImpl :: Fn2 P5 Number Number
foreign import magImpl :: Fn3 P5 Number Number Number
foreign import mapImpl :: Fn7 P5 Number Number Number Number Number (Maybe Boolean) Number
foreign import maxImpl :: Fn2 P5 (Array Number) Number
foreign import max2Impl :: Fn3 P5 Number Number Number
foreign import minImpl :: Fn2 P5 (Array Number) Number
foreign import min2Impl :: Fn3 P5 Number Number Number
foreign import normImpl :: Fn4 P5 Number Number Number Number
foreign import powImpl :: Fn3 P5 Number Number Number
foreign import roundImpl :: Fn2 P5 Number Int
foreign import sqImpl :: Fn2 P5 Number Number
foreign import sqrtImpl :: Fn2 P5 Number Number

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/abs)
abs :: P5 -> Number -> Number
abs p5 n = runFn2 absImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ceil)
ceil :: P5 -> Number -> Int
ceil p5 n = runFn2 ceilImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/constrain)
constrain :: P5 -> Number -> Number -> Number -> Number
constrain p5 n low high = runFn4 constrainImpl p5 n low high

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/dist)
dist :: P5 -> Number -> Number -> Number -> Number -> Number
dist p5 x1 y1 x2 y2 = runFn5 distImpl p5 x1 y1 x2 y2

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/dist)
dist2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number
dist2 p5 x1 y1 z1 x2 y2 z2 = runFn7 dist2Impl p5 x1 y1 z1 x2 y2 z2

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/exp)
exp :: P5 -> Number -> Number
exp p5 n = runFn2 expImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/floor)
floor :: P5 -> Number -> Int
floor p5 n = runFn2 floorImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/lerp)
lerp :: P5 -> Number -> Number -> Number -> Number
lerp p5 start stop amt = runFn4 lerpImpl p5 start stop amt

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/log)
log :: P5 -> Number -> Number
log p5 n = runFn2 logImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mag)
mag :: P5 -> Number -> Number -> Number
mag p5 a b = runFn3 magImpl p5 a b

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/map)
map :: P5 -> Number -> Number -> Number -> Number -> Number -> (Maybe Boolean) -> Number
map p5 value start1 stop1 start2 stop2 withinBounds = runFn7 mapImpl p5 value start1 stop1 start2 stop2 withinBounds

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/max)
max :: P5 -> (Array Number) -> Number
max p5 nums = runFn2 maxImpl p5 nums

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/max)
max2 :: P5 -> Number -> Number -> Number
max2 p5 n0 n1 = runFn3 max2Impl p5 n0 n1

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/min)
min :: P5 -> (Array Number) -> Number
min p5 nums = runFn2 minImpl p5 nums

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/min)
min2 :: P5 -> Number -> Number -> Number
min2 p5 n0 n1 = runFn3 min2Impl p5 n0 n1

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/norm)
norm :: P5 -> Number -> Number -> Number -> Number
norm p5 value start stop = runFn4 normImpl p5 value start stop

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pow)
pow :: P5 -> Number -> Number -> Number
pow p5 n e = runFn3 powImpl p5 n e

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/round)
round :: P5 -> Number -> Int
round p5 n = runFn2 roundImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sq)
sq :: P5 -> Number -> Number
sq p5 n = runFn2 sqImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sqrt)
sqrt :: P5 -> Number -> Number
sqrt p5 n = runFn2 sqrtImpl p5 n
