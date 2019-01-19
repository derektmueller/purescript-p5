module P5.Shape.ThreeDPrimitives
  ( box
  , cone
  , cylinder
  , ellipsoid
  , plane
  , sphere
  , torus
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import boxImpl :: Fn6 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import coneImpl :: Fn6 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Maybe Boolean) (Effect Unit)
foreign import cylinderImpl :: Fn7 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Maybe Boolean) (Maybe Boolean) (Effect Unit)
foreign import ellipsoidImpl :: Fn6 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import planeImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import sphereImpl :: Fn4 P5 (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import torusImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/box)
box :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
box p5 width height depth detailX detailY = runFn6 boxImpl p5 width height depth detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cone)
cone :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Maybe Boolean) -> (Effect Unit)
cone p5 radius height detailX detailY cap = runFn6 coneImpl p5 radius height detailX detailY cap

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cylinder)
cylinder :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Maybe Boolean) -> (Maybe Boolean) -> (Effect Unit)
cylinder p5 radius height detailX detailY bottomCap topCap = runFn7 cylinderImpl p5 radius height detailX detailY bottomCap topCap

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipsoid)
ellipsoid :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
ellipsoid p5 radiusx radiusy radiusz detailX detailY = runFn6 ellipsoidImpl p5 radiusx radiusy radiusz detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/plane)
plane :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
plane p5 width height detailX detailY = runFn5 planeImpl p5 width height detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sphere)
sphere :: P5 -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
sphere p5 radius detailX detailY = runFn4 sphereImpl p5 radius detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/torus)
torus :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
torus p5 radius tubeRadius detailX detailY = runFn5 torusImpl p5 radius tubeRadius detailX detailY
