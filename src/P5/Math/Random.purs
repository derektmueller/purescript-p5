module P5.Math.Random
  ( randomSeed
  , randomGaussian
  , random2
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)

foreign import random2Impl :: Fn3 P5 (Maybe Number) (Maybe Number) (Effect Number)
foreign import randomSeedImpl :: Fn2 P5 Number (Effect Unit)
foreign import randomGaussianImpl :: Fn3 P5 Number Number (Effect Number)

-- TODO: unsupported: random :: P5 -> Unsupported(Array) -> Unsupported(*)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/random)
random2 :: P5 -> (Maybe Number) -> (Maybe Number) -> Effect Number
random2 p5 min max = runFn3 random2Impl p5 min max

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/randomSeed)
randomSeed :: P5 -> Number -> (Effect Unit)
randomSeed p5 seed = runFn2 randomSeedImpl p5 seed

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/randomGaussian)
randomGaussian :: P5 -> Number -> Number -> Effect Number
randomGaussian p5 mean sd = runFn3 randomGaussianImpl p5 mean sd

