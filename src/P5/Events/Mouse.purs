module P5.Events.Mouse
  ( doubleClicked
  , mouseClicked
  , mouseDragged
  , mouseMoved
  , mousePressed
  , mouseReleased
  , mouseWheel
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import doubleClickedImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)
foreign import mouseClickedImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)
foreign import mouseDraggedImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)
foreign import mouseMovedImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)
foreign import mousePressedImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)
foreign import mouseReleasedImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)
foreign import mouseWheelImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/doubleClicked)
doubleClicked :: P5 -> (Effect Boolean) -> (Effect Unit)
doubleClicked p5 eff = runFn2 doubleClickedImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseClicked)
mouseClicked :: P5 -> (Effect Boolean) -> (Effect Unit)
mouseClicked p5 eff = runFn2 mouseClickedImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseDragged)
mouseDragged :: P5 -> (Effect Boolean) -> (Effect Unit)
mouseDragged p5 eff = runFn2 mouseDraggedImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseMoved)
mouseMoved :: P5 -> (Effect Boolean) -> (Effect Unit)
mouseMoved p5 eff = runFn2 mouseMovedImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mousePressed)
mousePressed :: P5 -> (Effect Boolean) -> (Effect Unit)
mousePressed p5 eff = runFn2 mousePressedImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseReleased)
mouseReleased :: P5 -> (Effect Boolean) -> (Effect Unit)
mouseReleased p5 eff = runFn2 mouseReleasedImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseWheel)
mouseWheel :: P5 -> (Effect Boolean) -> (Effect Unit)
mouseWheel p5 eff = runFn2 mouseWheelImpl p5 eff

