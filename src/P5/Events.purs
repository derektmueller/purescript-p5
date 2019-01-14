module P5.Events
  ( deviceMoved
  , deviceShaken
  , deviceTurned
  , doubleClicked
  , keyIsDown
  , keyPressed
  , keyReleased
  , keyTyped
  , mouseClicked
  , mouseDragged
  , mouseMoved
  , mousePressed
  , mouseReleased
  , mouseWheel
  , setMoveThreshold
  , setShakeThreshold
  , touchEnded
  , touchMoved
  , touchStarted
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)

foreign import deviceMovedImpl :: Fn1 P5 (Effect Unit)
foreign import deviceShakenImpl :: Fn1 P5 (Effect Unit)
foreign import deviceTurnedImpl :: Fn1 P5 (Effect Unit)
foreign import doubleClickedImpl :: Fn1 P5 (Effect Unit)
foreign import keyIsDownImpl :: Fn2 P5 Number Boolean
foreign import keyPressedImpl :: Fn1 P5 (Effect Unit)
foreign import keyReleasedImpl :: Fn1 P5 (Effect Unit)
foreign import keyTypedImpl :: Fn1 P5 (Effect Unit)
foreign import mouseClickedImpl :: Fn1 P5 (Effect Unit)
foreign import mouseDraggedImpl :: Fn1 P5 (Effect Unit)
foreign import mouseMovedImpl :: Fn1 P5 (Effect Unit)
foreign import mousePressedImpl :: Fn1 P5 (Effect Unit)
foreign import mouseReleasedImpl :: Fn1 P5 (Effect Unit)
foreign import mouseWheelImpl :: Fn1 P5 (Effect Unit)
foreign import setMoveThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import setShakeThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import touchEndedImpl :: Fn1 P5 (Effect Unit)
foreign import touchMovedImpl :: Fn1 P5 (Effect Unit)
foreign import touchStartedImpl :: Fn1 P5 (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/deviceMoved)
deviceMoved :: P5 -> (Effect Unit)
deviceMoved p5  = runFn1 deviceMovedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/deviceShaken)
deviceShaken :: P5 -> (Effect Unit)
deviceShaken p5  = runFn1 deviceShakenImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/deviceTurned)
deviceTurned :: P5 -> (Effect Unit)
deviceTurned p5  = runFn1 deviceTurnedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/doubleClicked)
doubleClicked :: P5 -> (Effect Unit)
doubleClicked p5  = runFn1 doubleClickedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyIsDown)
keyIsDown :: P5 -> Number -> Boolean
keyIsDown p5 code = runFn2 keyIsDownImpl p5 code

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyPressed)
keyPressed :: P5 -> (Effect Unit)
keyPressed p5  = runFn1 keyPressedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyReleased)
keyReleased :: P5 -> (Effect Unit)
keyReleased p5  = runFn1 keyReleasedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyTyped)
keyTyped :: P5 -> (Effect Unit)
keyTyped p5  = runFn1 keyTypedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseClicked)
mouseClicked :: P5 -> (Effect Unit)
mouseClicked p5  = runFn1 mouseClickedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseDragged)
mouseDragged :: P5 -> (Effect Unit)
mouseDragged p5  = runFn1 mouseDraggedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseMoved)
mouseMoved :: P5 -> (Effect Unit)
mouseMoved p5  = runFn1 mouseMovedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mousePressed)
mousePressed :: P5 -> (Effect Unit)
mousePressed p5  = runFn1 mousePressedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseReleased)
mouseReleased :: P5 -> (Effect Unit)
mouseReleased p5  = runFn1 mouseReleasedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseWheel)
mouseWheel :: P5 -> (Effect Unit)
mouseWheel p5  = runFn1 mouseWheelImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setMoveThreshold)
setMoveThreshold :: P5 -> Number -> (Effect Unit)
setMoveThreshold p5 value = runFn2 setMoveThresholdImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setShakeThreshold)
setShakeThreshold :: P5 -> Number -> (Effect Unit)
setShakeThreshold p5 value = runFn2 setShakeThresholdImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/touchEnded)
touchEnded :: P5 -> (Effect Unit)
touchEnded p5  = runFn1 touchEndedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/touchMoved)
touchMoved :: P5 -> (Effect Unit)
touchMoved p5  = runFn1 touchMovedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/touchStarted)
touchStarted :: P5 -> (Effect Unit)
touchStarted p5  = runFn1 touchStartedImpl p5 
