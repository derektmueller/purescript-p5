module P5.Math.Noise
  ( noiseDetail
  , noiseSeed
  , noise
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)

foreign import noiseDetailImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import noiseSeedImpl :: Fn2 P5 Number (Effect Unit)
foreign import noiseImpl :: Fn4 P5 Number (Maybe Number) (Maybe Number) (Effect Number)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noiseDetail)
noiseDetail :: P5 -> Number -> Number -> (Effect Unit)
noiseDetail p5 lod falloff = runFn3 noiseDetailImpl p5 lod falloff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noiseSeed)
noiseSeed :: P5 -> Number -> (Effect Unit)
noiseSeed p5 seed = runFn2 noiseSeedImpl p5 seed

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noise)
noise :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> Effect Number
noise p5 x y z = runFn4 noiseImpl p5 x y z

