module P5.Transform.Transform
  ( applyMatrix
  , resetMatrix
  , rotate
  , rotateX
  , rotateY
  , rotateZ
  , scale
  , scale2
  , shearX
  , shearY
  , translate
  , translate2
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import applyMatrixImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import resetMatrixImpl :: Fn1 P5 (Effect Unit)
foreign import rotateImpl :: Fn3 P5 Number (Maybe ArrayNumberOrVector) (Effect Unit)
foreign import rotateXImpl :: Fn2 P5 Number (Effect Unit)
foreign import rotateYImpl :: Fn2 P5 Number (Effect Unit)
foreign import rotateZImpl :: Fn2 P5 Number (Effect Unit)
foreign import scaleImpl :: Fn2 P5 ArrayNumberOrVector (Effect Unit)
foreign import scale2Impl :: Fn4 P5 NumberOrArrayNumberOrVector (Maybe Number) (Maybe Number) (Effect Unit)
foreign import shearXImpl :: Fn2 P5 Number (Effect Unit)
foreign import shearYImpl :: Fn2 P5 Number (Effect Unit)
foreign import translateImpl :: Fn2 P5 Vector (Effect Unit)
foreign import translate2Impl :: Fn4 P5 Number Number (Maybe Number) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/applyMatrix)
applyMatrix :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
applyMatrix p5 a b c d e f = runFn7 applyMatrixImpl p5 a b c d e f

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/resetMatrix)
resetMatrix :: P5 -> (Effect Unit)
resetMatrix p5  = runFn1 resetMatrixImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rotate)
rotate :: P5 -> Number -> (Maybe ArrayNumberOrVector) -> (Effect Unit)
rotate p5 angle axis = runFn3 rotateImpl p5 angle axis

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rotateX)
rotateX :: P5 -> Number -> (Effect Unit)
rotateX p5 angle = runFn2 rotateXImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rotateY)
rotateY :: P5 -> Number -> (Effect Unit)
rotateY p5 angle = runFn2 rotateYImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rotateZ)
rotateZ :: P5 -> Number -> (Effect Unit)
rotateZ p5 angle = runFn2 rotateZImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/scale)
scale :: P5 -> ArrayNumberOrVector -> (Effect Unit)
scale p5 scales = runFn2 scaleImpl p5 scales

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/scale)
scale2 :: P5 -> NumberOrArrayNumberOrVector -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
scale2 p5 s y z = runFn4 scale2Impl p5 s y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/shearX)
shearX :: P5 -> Number -> (Effect Unit)
shearX p5 angle = runFn2 shearXImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/shearY)
shearY :: P5 -> Number -> (Effect Unit)
shearY p5 angle = runFn2 shearYImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/translate)
translate :: P5 -> Vector -> (Effect Unit)
translate p5 vector = runFn2 translateImpl p5 vector

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/translate)
translate2 :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
translate2 p5 x y z = runFn4 translate2Impl p5 x y z
