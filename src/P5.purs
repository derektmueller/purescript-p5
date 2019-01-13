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
  , module P5.Generated
  ) where

import Effect (Effect)
import Effect.Aff (Aff)
import Prelude (Unit)
import Data.Maybe (Maybe)
import Data.Function.Uncurried (Fn2, runFn2)
import P5.Types (Element, P5, Vector)
import P5.Generated 
import Data.Function.Uncurried (Fn3, Fn4, runFn3, runFn4)

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
