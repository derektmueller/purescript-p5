module P5.LightsAndCamera.Lights
  ( ambientLight
  , ambientLight2
  , ambientLight3
  , ambientLight4
  , ambientLight5
  , directionalLight
  , directionalLight2
  , directionalLight3
  , directionalLight4
  , pointLight
  , pointLight2
  , pointLight3
  , pointLight4
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
foreign import directionalLightImpl :: Fn3 P5 ArrayNumberOrStringOrColor Vector (Effect Unit)
foreign import directionalLight2Impl :: Fn5 P5 Number Number Number Vector (Effect Unit)
foreign import directionalLight3Impl :: Fn5 P5 ArrayNumberOrStringOrColor Number Number Number (Effect Unit)
foreign import directionalLight4Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import pointLightImpl :: Fn3 P5 ArrayNumberOrStringOrColor Vector (Effect Unit)
foreign import pointLight2Impl :: Fn5 P5 Number Number Number Vector (Effect Unit)
foreign import pointLight3Impl :: Fn5 P5 ArrayNumberOrStringOrColor Number Number Number (Effect Unit)
foreign import pointLight4Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)

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
