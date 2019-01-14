module P5.LightsAndCamera
  ( ambientLight
  , ambientLight2
  , ambientLight3
  , ambientLight4
  , ambientLight5
  , ambientMaterial
  , ambientMaterial2
  , camera
  , createCamera
  , createShader
  , debugMode
  , debugMode2
  , debugMode3
  , debugMode4
  , debugMode5
  , directionalLight
  , directionalLight2
  , directionalLight3
  , directionalLight4
  , loadShader
  , noDebugMode
  , normalMaterial
  , orbitControl
  , ortho
  , perspective
  , pointLight
  , pointLight2
  , pointLight3
  , pointLight4
  , setCamera
  , shader
  , specularMaterial
  , specularMaterial2
  , texture
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)

foreign import ambientLightImpl :: Fn2 P5 String (Effect Unit)
foreign import ambientLight2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import ambientLight3Impl :: Fn2 P5 Color (Effect Unit)
foreign import ambientLight4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import ambientLight5Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import ambientMaterialImpl :: Fn2 P5 ArrayNumberOrStringOrColor (Effect Unit)
foreign import ambientMaterial2Impl :: Fn5 P5 Number (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import cameraImpl :: Fn10 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import createCameraImpl :: Fn1 P5 Camera
foreign import createShaderImpl :: Fn3 P5 String String Shader
foreign import debugModeImpl :: Fn1 P5 (Effect Unit)
foreign import debugMode2Impl :: Fn2 P5 DebugMode (Effect Unit)
foreign import debugMode3Impl :: Fn6 P5 DebugMode (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import debugMode4Impl :: Fn7 P5 DebugMode (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import debugMode5Impl :: Fn10 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import directionalLightImpl :: Fn3 P5 ArrayNumberOrStringOrColor Vector (Effect Unit)
foreign import directionalLight2Impl :: Fn5 P5 Number Number Number Vector (Effect Unit)
foreign import directionalLight3Impl :: Fn5 P5 ArrayNumberOrStringOrColor Number Number Number (Effect Unit)
foreign import directionalLight4Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import loadShaderImpl :: Fn3 P5 (Maybe String) (Maybe String) Shader
foreign import noDebugModeImpl :: Fn1 P5 (Effect Unit)
foreign import normalMaterialImpl :: Fn1 P5 (Effect Unit)
foreign import orbitControlImpl :: Fn3 P5 (Maybe Number) (Maybe Number) (Effect Unit)
foreign import orthoImpl :: Fn7 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import perspectiveImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import pointLightImpl :: Fn3 P5 ArrayNumberOrStringOrColor Vector (Effect Unit)
foreign import pointLight2Impl :: Fn5 P5 Number Number Number Vector (Effect Unit)
foreign import pointLight3Impl :: Fn5 P5 ArrayNumberOrStringOrColor Number Number Number (Effect Unit)
foreign import pointLight4Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import setCameraImpl :: Fn2 P5 Camera (Effect Unit)
foreign import shaderImpl :: Fn2 P5 (Maybe Shader) (Effect Unit)
foreign import specularMaterialImpl :: Fn2 P5 ArrayNumberOrStringOrColor (Effect Unit)
foreign import specularMaterial2Impl :: Fn5 P5 Number (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import textureImpl :: Fn2 P5 GraphicsOrImageOrMediaElement (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight :: P5 -> String -> (Effect Unit)
ambientLight p5 value = runFn2 ambientLightImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight2 :: P5 -> (Array Number) -> (Effect Unit)
ambientLight2 p5 values = runFn2 ambientLight2Impl p5 values

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight3 :: P5 -> Color -> (Effect Unit)
ambientLight3 p5 color = runFn2 ambientLight3Impl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
ambientLight4 p5 gray alpha = runFn3 ambientLight4Impl p5 gray alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
ambientLight5 p5 v1 v2 v3 alpha = runFn5 ambientLight5Impl p5 v1 v2 v3 alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientMaterial)
ambientMaterial :: P5 -> ArrayNumberOrStringOrColor -> (Effect Unit)
ambientMaterial p5 color = runFn2 ambientMaterialImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientMaterial)
ambientMaterial2 :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
ambientMaterial2 p5 v1 v2 v3 a = runFn5 ambientMaterial2Impl p5 v1 v2 v3 a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/camera)
camera :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
camera p5 x y z centerX centerY centerZ upX upY upZ = runFn10 cameraImpl p5 x y z centerX centerY centerZ upX upY upZ

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createCamera)
createCamera :: P5 -> Camera
createCamera p5  = runFn1 createCameraImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createShader)
createShader :: P5 -> String -> String -> Shader
createShader p5 vertSrc fragSrc = runFn3 createShaderImpl p5 vertSrc fragSrc

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode :: P5 -> (Effect Unit)
debugMode p5  = runFn1 debugModeImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode2 :: P5 -> DebugMode -> (Effect Unit)
debugMode2 p5 mode = runFn2 debugMode2Impl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode3 :: P5 -> DebugMode -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
debugMode3 p5 mode axesSize xOff yOff zOff = runFn6 debugMode3Impl p5 mode axesSize xOff yOff zOff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode4 :: P5 -> DebugMode -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
debugMode4 p5 mode gridSize gridDivisions xOff yOff zOff = runFn7 debugMode4Impl p5 mode gridSize gridDivisions xOff yOff zOff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode5 :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
debugMode5 p5 gridSize gridDivisions gridXOff gridYOff gridZOff axesSize axesXOff axesYOff axesZOff = runFn10 debugMode5Impl p5 gridSize gridDivisions gridXOff gridYOff gridZOff axesSize axesXOff axesYOff axesZOff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)
directionalLight :: P5 -> ArrayNumberOrStringOrColor -> Vector -> (Effect Unit)
directionalLight p5 color position = runFn3 directionalLightImpl p5 color position

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)
directionalLight2 :: P5 -> Number -> Number -> Number -> Vector -> (Effect Unit)
directionalLight2 p5 v1 v2 v3 position = runFn5 directionalLight2Impl p5 v1 v2 v3 position

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)
directionalLight3 :: P5 -> ArrayNumberOrStringOrColor -> Number -> Number -> Number -> (Effect Unit)
directionalLight3 p5 color x y z = runFn5 directionalLight3Impl p5 color x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)
directionalLight4 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
directionalLight4 p5 v1 v2 v3 x y z = runFn7 directionalLight4Impl p5 v1 v2 v3 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loadShader)
loadShader :: P5 -> (Maybe String) -> (Maybe String) -> Shader
loadShader p5 vertFilename fragFilename = runFn3 loadShaderImpl p5 vertFilename fragFilename

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noDebugMode)
noDebugMode :: P5 -> (Effect Unit)
noDebugMode p5  = runFn1 noDebugModeImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/normalMaterial)
normalMaterial :: P5 -> (Effect Unit)
normalMaterial p5  = runFn1 normalMaterialImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/orbitControl)
orbitControl :: P5 -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
orbitControl p5 sensitivityX sensitivityY = runFn3 orbitControlImpl p5 sensitivityX sensitivityY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ortho)
ortho :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
ortho p5 left right bottom top near far = runFn7 orthoImpl p5 left right bottom top near far

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/perspective)
perspective :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
perspective p5 fovy aspect near far = runFn5 perspectiveImpl p5 fovy aspect near far

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)
pointLight :: P5 -> ArrayNumberOrStringOrColor -> Vector -> (Effect Unit)
pointLight p5 color position = runFn3 pointLightImpl p5 color position

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)
pointLight2 :: P5 -> Number -> Number -> Number -> Vector -> (Effect Unit)
pointLight2 p5 v1 v2 v3 position = runFn5 pointLight2Impl p5 v1 v2 v3 position

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)
pointLight3 :: P5 -> ArrayNumberOrStringOrColor -> Number -> Number -> Number -> (Effect Unit)
pointLight3 p5 color x y z = runFn5 pointLight3Impl p5 color x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)
pointLight4 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
pointLight4 p5 v1 v2 v3 x y z = runFn7 pointLight4Impl p5 v1 v2 v3 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setCamera)
setCamera :: P5 -> Camera -> (Effect Unit)
setCamera p5 cam = runFn2 setCameraImpl p5 cam

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/shader)
shader :: P5 -> (Maybe Shader) -> (Effect Unit)
shader p5 s = runFn2 shaderImpl p5 s

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/specularMaterial)
specularMaterial :: P5 -> ArrayNumberOrStringOrColor -> (Effect Unit)
specularMaterial p5 color = runFn2 specularMaterialImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/specularMaterial)
specularMaterial2 :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
specularMaterial2 p5 v1 v2 v3 a = runFn5 specularMaterial2Impl p5 v1 v2 v3 a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/texture)
texture :: P5 -> GraphicsOrImageOrMediaElement -> (Effect Unit)
texture p5 tex = runFn2 textureImpl p5 tex
