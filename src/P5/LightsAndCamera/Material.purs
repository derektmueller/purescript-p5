module P5.LightsAndCamera.Material
  ( ambientMaterial
  , ambientMaterial2
  , createShader
  , loadShader
  , normalMaterial
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



foreign import ambientMaterialImpl :: Fn2 P5 ArrayNumberOrStringOrColor (Effect Unit)
foreign import ambientMaterial2Impl :: Fn5 P5 Number (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import createShaderImpl :: Fn3 P5 String String Shader
foreign import loadShaderImpl :: Fn3 P5 (Maybe String) (Maybe String) Shader
foreign import normalMaterialImpl :: Fn1 P5 (Effect Unit)
foreign import shaderImpl :: Fn2 P5 (Maybe Shader) (Effect Unit)
foreign import specularMaterialImpl :: Fn2 P5 ArrayNumberOrStringOrColor (Effect Unit)
foreign import specularMaterial2Impl :: Fn5 P5 Number (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import textureImpl :: Fn2 P5 GraphicsOrImageOrMediaElement (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientMaterial)
ambientMaterial :: P5 -> ArrayNumberOrStringOrColor -> (Effect Unit)
ambientMaterial p5 color = runFn2 ambientMaterialImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientMaterial)
ambientMaterial2 :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
ambientMaterial2 p5 v1 v2 v3 a = runFn5 ambientMaterial2Impl p5 v1 v2 v3 a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createShader)
createShader :: P5 -> String -> String -> Shader
createShader p5 vertSrc fragSrc = runFn3 createShaderImpl p5 vertSrc fragSrc

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loadShader)
loadShader :: P5 -> (Maybe String) -> (Maybe String) -> Shader
loadShader p5 vertFilename fragFilename = runFn3 loadShaderImpl p5 vertFilename fragFilename

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/normalMaterial)
normalMaterial :: P5 -> (Effect Unit)
normalMaterial p5  = runFn1 normalMaterialImpl p5 

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
