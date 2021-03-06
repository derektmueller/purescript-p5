module P5.Math
  ( createVector
  , module P5.Math.Calculation
  , module P5.Math.Trigonometry
  , module P5.Math.Noise
  , module P5.Math.Random
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)

import P5.Math.Calculation
import P5.Math.Trigonometry
import P5.Math.Noise
import P5.Math.Random

foreign import createVectorImpl :: Fn4 P5 (Maybe Number) (Maybe Number) (Maybe Number) Vector

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createVector)
createVector :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> Vector
createVector p5 x y z = runFn4 createVectorImpl p5 x y z
