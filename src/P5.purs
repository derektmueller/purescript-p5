module P5 (
  P5,
  p5,
  setup,
  draw,
  background,
  stroke,
  strokeWeight,
  line,
  createCanvas
  ) where

import Effect (Effect)
import Prelude -- (Unit, pure, unit)
import Data.Function.Uncurried

foreign import data P5 :: Type
foreign import p5Impl :: (P5 -> Effect Unit) -> Effect Unit
foreign import setupImpl :: P5 -> Effect Unit -> Effect Unit
foreign import drawImpl :: P5 -> Effect Unit -> Effect Unit
foreign import backgroundImpl :: P5 -> ColorString -> Effect Unit
foreign import strokeImpl :: P5 -> ColorString -> Effect Unit
foreign import strokeWeightImpl :: P5 -> Number -> Effect Unit
foreign import lineImpl 
  :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
foreign import createCanvasImpl 
  :: P5 -> Number -> Number -> Effect Unit

type ColorString = String

p5 :: (P5 -> Effect Unit) -> Effect Unit
p5 f = p5Impl f

setup :: P5 -> Effect Unit -> Effect Unit
setup p eff = setupImpl p eff

draw :: P5 -> Effect Unit -> Effect Unit
draw p eff = drawImpl p eff

background :: P5 -> ColorString -> Effect Unit
background p colorString = backgroundImpl p colorString

stroke :: P5 -> ColorString -> Effect Unit
stroke p colorString = strokeImpl p colorString

strokeWeight :: P5 -> Number -> Effect Unit
strokeWeight p w = strokeWeightImpl p w

line :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
line p x1 y1 x2 y2 = lineImpl p x1 y1 x2 y2

createCanvas :: P5 -> Number -> Number -> Effect Unit
createCanvas p w h = createCanvasImpl p w h


