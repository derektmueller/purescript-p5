module P5.Events.Acceleration
  ( deviceMoved
  , deviceShaken
  , deviceTurned
  , setMoveThreshold
  , setShakeThreshold
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import deviceMovedImpl :: Fn2 P5 (Effect Unit) (Effect Unit)
foreign import deviceShakenImpl :: Fn2 P5 (Effect Unit) (Effect Unit)
foreign import deviceTurnedImpl :: Fn2 P5 (Effect Unit) (Effect Unit)
foreign import setMoveThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import setShakeThresholdImpl :: Fn2 P5 Number (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/deviceMoved)
deviceMoved :: P5 -> (Effect Unit) -> (Effect Unit)
deviceMoved p5 eff = runFn2 deviceMovedImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/deviceShaken)
deviceShaken :: P5 -> (Effect Unit) -> (Effect Unit)
deviceShaken p5 eff = runFn2 deviceShakenImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/deviceTurned)
deviceTurned :: P5 -> (Effect Unit) -> (Effect Unit)
deviceTurned p5 eff = runFn2 deviceTurnedImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setMoveThreshold)
setMoveThreshold :: P5 -> Number -> (Effect Unit)
setMoveThreshold p5 value = runFn2 setMoveThresholdImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setShakeThreshold)
setShakeThreshold :: P5 -> Number -> (Effect Unit)
setShakeThreshold p5 value = runFn2 setShakeThresholdImpl p5 value
