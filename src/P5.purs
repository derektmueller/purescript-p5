module P5 (
  P5,
  p5,
  setup,
  draw,
  background,
  createCanvas
  ) where

import Effect (Effect)
import Prelude -- (Unit, pure, unit)

foreign import data P5 :: Type
foreign import p5Impl :: (P5 -> Effect Unit) -> Effect Unit
foreign import setupImpl :: P5 -> Effect Unit -> Effect Unit
foreign import drawImpl :: P5 -> Effect Unit -> Effect Unit
foreign import backgroundImpl :: P5 -> ColorString -> Effect Unit
foreign import createCanvasImpl :: P5 -> Int -> Int -> Effect Unit

type ColorString = String

p5 :: (P5 -> Effect Unit) -> Effect Unit
p5 f = p5Impl f

setup :: P5 -> Effect Unit -> Effect Unit
setup p eff = setupImpl p eff

draw :: P5 -> Effect Unit -> Effect Unit
draw p eff = drawImpl p eff

background :: P5 -> ColorString -> Effect Unit
background p colorString = backgroundImpl p colorString

createCanvas :: P5 -> Int -> Int -> Effect Unit
createCanvas p w h = createCanvasImpl p w h


