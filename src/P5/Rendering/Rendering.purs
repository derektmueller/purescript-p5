module P5.Rendering.Rendering
  ( blendMode
  , createGraphics
  , noCanvas
  , resizeCanvas
  , setAttributes2
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import blendModeImpl :: Fn2 P5 BlendMode (Effect Unit)
foreign import createGraphicsImpl :: Fn4 P5 Number Number (Maybe CreateGraphicsRenderer) Graphics
foreign import noCanvasImpl :: Fn1 P5 (Effect Unit)
foreign import resizeCanvasImpl :: Fn4 P5 Number Number (Maybe Boolean) (Effect Unit)
foreign import setAttributes2Impl :: Fn3 P5 String Boolean (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/blendMode)
blendMode :: P5 -> BlendMode -> (Effect Unit)
blendMode p5 mode = runFn2 blendModeImpl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createGraphics)
createGraphics :: P5 -> Number -> Number -> (Maybe CreateGraphicsRenderer) -> Graphics
createGraphics p5 w h renderer = runFn4 createGraphicsImpl p5 w h renderer

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noCanvas)
noCanvas :: P5 -> (Effect Unit)
noCanvas p5  = runFn1 noCanvasImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/resizeCanvas)
resizeCanvas :: P5 -> Number -> Number -> (Maybe Boolean) -> (Effect Unit)
resizeCanvas p5 w h noRedraw = runFn4 resizeCanvasImpl p5 w h noRedraw

-- TODO: unsupported: setAttributes :: P5 -> Unsupported(Object) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setAttributes)
setAttributes2 :: P5 -> String -> Boolean -> (Effect Unit)
setAttributes2 p5 key value = runFn3 setAttributes2Impl p5 key value
