module P5 
  ( p5
  , getP5
  , setup
  , draw
  , createCanvas
  , id
  , setId
  , noise
  , random2
  , randomGaussian
  , CreateCanvasRenderer(..)
  , module P5.Types
  , module P5.Color
  , module P5.Data
  , module P5.Environment
  , module P5.Events
  , module P5.IO
  , module P5.Image
  , module P5.LightsAndCamera
  , module P5.Math
  , module P5.Rendering
  , module P5.Shape
  , module P5.Structure
  , module P5.Transform
  , module P5.Typography
  ) where

import Effect (Effect)
import Effect.Aff (Aff)
import Prelude (Unit)
import Data.Maybe (Maybe)
import Data.Function.Uncurried (Fn2, Fn3, Fn4, runFn2, runFn3, runFn4)
import P5.Types
import P5.Color
import P5.Data
import P5.Environment
import P5.Events
import P5.IO
import P5.Image
import P5.LightsAndCamera
import P5.Math
import P5.Rendering
import P5.Shape
import P5.Structure
import P5.Transform
import P5.Typography

data CreateCanvasRenderer = CREATE_CANVAS_RENDERER_P2D | CREATE_CANVAS_RENDERER_WEBGL

foreign import p5Impl :: (P5 -> Effect Unit) -> Effect P5
foreign import getP5Impl :: Effect P5
foreign import setupImpl :: P5 -> Effect Unit -> Effect Unit
foreign import drawImpl :: P5 -> Effect Unit -> Effect Unit
foreign import createCanvasImpl 
  :: P5 -> Number -> Number -> Maybe CreateCanvasRenderer -> Effect Element
foreign import idImpl :: Element -> String
foreign import setIdImpl :: Fn2 Element String (Effect Unit)
foreign import noiseImpl :: Fn4 P5 Number (Maybe Number) (Maybe Number) (Effect Number)
foreign import random2Impl :: Fn3 P5 (Maybe Number) (Maybe Number) (Effect Number)
foreign import randomGaussianImpl :: Fn3 P5 Number Number (Effect Number)

p5 :: (P5 -> Effect Unit) -> Effect P5
p5 f = p5Impl f

getP5 :: Effect P5
getP5 = getP5Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setup)
setup :: P5 -> Effect Unit -> Effect Unit
setup p eff = setupImpl p eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/draw)
draw :: P5 -> Effect Unit -> Effect Unit
draw p eff = drawImpl p eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createCanvas)
createCanvas :: P5 -> Number -> Number -> Maybe CreateCanvasRenderer -> Effect Element
createCanvas p w h r = createCanvasImpl p w h r

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/id)
id :: Element -> String
id = idImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/id)
setId :: Element -> String -> Effect Unit
setId = runFn2 setIdImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noise)
noise :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> Effect Number
noise p5 x y z = runFn4 noiseImpl p5 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/random)
random2 :: P5 -> (Maybe Number) -> (Maybe Number) -> Effect Number
random2 p5 min max = runFn3 random2Impl p5 min max

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/randomGaussian)
randomGaussian :: P5 -> Number -> Number -> Effect Number
randomGaussian p5 mean sd = runFn3 randomGaussianImpl p5 mean sd
