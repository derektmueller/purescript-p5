module P5 
  ( p5
  , getP5
  , setup
  , draw
  , id
  , setId
  , module P5.Types
  ) where

import Effect (Effect)
import Effect.Aff (Aff)
import Prelude (Unit)
import Data.Maybe (Maybe)
import Data.Function.Uncurried (Fn2, Fn3, Fn4, runFn2, runFn3, runFn4)
import P5.Types

foreign import p5Impl :: (P5 -> Effect Unit) -> Effect P5
foreign import getP5Impl :: Effect P5
foreign import setupImpl :: P5 -> Effect Unit -> Effect Unit
foreign import drawImpl :: P5 -> Effect Unit -> Effect Unit
foreign import idImpl :: Element -> String
foreign import setIdImpl :: Fn2 Element String (Effect Unit)

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/id)
id :: Element -> String
id = idImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/id)
setId :: Element -> String -> Effect Unit
setId = runFn2 setIdImpl

