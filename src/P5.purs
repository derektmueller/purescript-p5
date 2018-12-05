module P5 
  ( p5
  , getP5
  , setup
  , draw
  , background
  , strokeJoin
  , StrokeJoin(..)
  , createCanvas
  , id
  , setId
  , module P5.Types
  , module P5.Generated
  ) where

import Effect (Effect)
import Prelude (Unit)
import Data.Function.Uncurried (Fn2, runFn2)
import P5.Types (Element, P5, Vector)
import P5.Generated 

foreign import p5Impl :: (P5 -> Effect Unit) -> Effect Unit
foreign import getP5Impl :: Effect P5
foreign import setupImpl :: P5 -> Effect Unit -> Effect Unit
foreign import drawImpl :: P5 -> Effect Unit -> Effect Unit
foreign import backgroundImpl :: P5 -> ColorString -> Effect Unit
foreign import strokeJoinMiterImpl :: P5 -> Effect Unit
foreign import strokeJoinBevelImpl :: P5 -> Effect Unit
foreign import strokeJoinRoundImpl :: P5 -> Effect Unit
foreign import createCanvasImpl 
  :: P5 -> Number -> Number -> Effect Element
foreign import idImpl :: Element -> String
foreign import setIdImpl :: Fn2 Element String (Effect Unit)

type ColorString = String
data StrokeJoin = Miter | Bevel | Round

p5 :: (P5 -> Effect Unit) -> Effect Unit
p5 f = p5Impl f

getP5 :: Effect P5
getP5 = getP5Impl

setup :: P5 -> Effect Unit -> Effect Unit
setup p eff = setupImpl p eff

draw :: P5 -> Effect Unit -> Effect Unit
draw p eff = drawImpl p eff

background :: P5 -> ColorString -> Effect Unit
background p colorString = backgroundImpl p colorString

strokeJoin :: P5 -> StrokeJoin -> Effect Unit
strokeJoin p Miter = strokeJoinMiterImpl p
strokeJoin p Round = strokeJoinRoundImpl p
strokeJoin p Bevel = strokeJoinBevelImpl p

createCanvas :: P5 -> Number -> Number -> Effect Element
createCanvas p w h = createCanvasImpl p w h

id :: Element -> String
id = idImpl

setId :: Element -> String -> Effect Unit
setId = runFn2 setIdImpl
