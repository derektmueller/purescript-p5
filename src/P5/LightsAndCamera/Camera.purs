module P5.LightsAndCamera.Camera
  ( camera
  , createCamera
  , ortho
  , perspective
  , setCamera
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import cameraImpl :: Fn10 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import createCameraImpl :: Fn1 P5 Camera
foreign import orthoImpl :: Fn7 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import perspectiveImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import setCameraImpl :: Fn2 P5 Camera (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/camera)
camera :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
camera p5 x y z centerX centerY centerZ upX upY upZ = runFn10 cameraImpl p5 x y z centerX centerY centerZ upX upY upZ

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createCamera)
createCamera :: P5 -> Camera
createCamera p5  = runFn1 createCameraImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ortho)
ortho :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
ortho p5 left right bottom top near far = runFn7 orthoImpl p5 left right bottom top near far

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/perspective)
perspective :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
perspective p5 fovy aspect near far = runFn5 perspectiveImpl p5 fovy aspect near far

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setCamera)
setCamera :: P5 -> Camera -> (Effect Unit)
setCamera p5 cam = runFn2 setCameraImpl p5 cam
