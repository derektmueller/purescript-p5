module P5 
  ( p5
  , p5T
  , p5Opts
  , getP5
  , setup
  , setupT
  , draw
  , id
  , setId
  , setIdT
  , module P5.Types
  ) where

import Effect (Effect)
import Effect.Aff (Aff)
import Prelude (Unit, ($), bind, pure)
import Data.Maybe (Maybe(..), maybe)
import Data.Function.Uncurried (Fn2, Fn3, Fn4, runFn2, runFn3, runFn4)
import Control.Monad.Reader
import P5.Types

foreign import p5Impl :: (P5 -> Effect Unit) -> Effect P5
foreign import getP5Impl :: Effect P5
foreign import setupImpl :: P5 -> Effect Unit -> Effect Unit
foreign import drawImpl :: P5 -> Effect Unit -> Effect Unit
foreign import idImpl :: Element -> String
foreign import setIdImpl :: Fn2 Element String (Effect Unit)

type Options = {
  p5 :: Maybe P5
}

p5 :: (P5 -> Effect Unit) -> Effect P5
p5 f = p5Impl f

p5Opts :: Options -> P5M Unit -> Effect Unit
p5Opts options eff = do
  p <- maybe getP5 pure options.p5
  runReaderT eff $ p 

p5T :: P5M Unit -> Effect Unit
p5T eff = do
  p5Opts {p5: Nothing} eff

getP5 :: Effect P5
getP5 = getP5Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setup)
setup :: P5 -> Effect Unit -> Effect Unit
setup p eff = setupImpl p eff

setupT :: P5M Unit -> P5M Unit
setupT eff = do
  p <- ask
  lift $ runReaderT eff $ p

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/draw)
draw :: P5 -> Effect Unit -> Effect Unit
draw p eff = drawImpl p eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/id)
id :: Element -> String
id = idImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/id)
setId :: Element -> String -> Effect Unit
setId = runFn2 setIdImpl

setIdT :: Element -> String -> P5M Unit
setIdT elem s = lift $ runFn2 setIdImpl elem s


