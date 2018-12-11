module P5 
  ( p5
  , getP5
  , setup
  , draw
  , createCanvas
  , id
  , setId
  , module P5.Types
  , module P5.Generated
  ) where

import Effect (Effect)
import Effect.Aff (Aff)
import Prelude (Unit)
import Data.Function.Uncurried (Fn2, runFn2)
import P5.Types (Element, P5, Vector)
import P5.Generated 

foreign import p5Impl :: (P5 -> Effect Unit) -> Effect P5
foreign import getP5Impl :: Effect P5
foreign import setupImpl :: P5 -> Effect Unit -> Effect Unit
foreign import drawImpl :: P5 -> Effect Unit -> Effect Unit
foreign import createCanvasImpl 
  :: P5 -> Number -> Number -> Effect Element
foreign import idImpl :: Element -> String
foreign import setIdImpl :: Fn2 Element String (Effect Unit)

p5 :: (P5 -> Effect Unit) -> Effect P5
p5 f = p5Impl f

getP5 :: Effect P5
getP5 = getP5Impl

setup :: P5 -> Effect Unit -> Effect Unit
setup p eff = setupImpl p eff

draw :: P5 -> Effect Unit -> Effect Unit
draw p eff = drawImpl p eff

createCanvas :: P5 -> Number -> Number -> Effect Element
createCanvas p w h = createCanvasImpl p w h

id :: Element -> String
id = idImpl

setId :: Element -> String -> Effect Unit
setId = runFn2 setIdImpl
