module P5.LightsAndCamera.Interaction
  ( debugMode
  , debugMode2
  , debugMode3
  , debugMode4
  , debugMode5
  , noDebugMode
  , orbitControl
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import debugModeImpl :: Fn1 P5 (Effect Unit)
foreign import debugMode2Impl :: Fn2 P5 DebugMode (Effect Unit)
foreign import debugMode3Impl :: Fn6 P5 DebugMode (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import debugMode4Impl :: Fn7 P5 DebugMode (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import debugMode5Impl :: Fn10 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import noDebugModeImpl :: Fn1 P5 (Effect Unit)
foreign import orbitControlImpl :: Fn3 P5 (Maybe Number) (Maybe Number) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode :: P5 -> (Effect Unit)
debugMode p5  = runFn1 debugModeImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode2 :: P5 -> DebugMode -> (Effect Unit)
debugMode2 p5 mode = runFn2 debugMode2Impl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode3 :: P5 -> DebugMode -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
debugMode3 p5 mode axesSize xOff yOff zOff = runFn6 debugMode3Impl p5 mode axesSize xOff yOff zOff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode4 :: P5 -> DebugMode -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
debugMode4 p5 mode gridSize gridDivisions xOff yOff zOff = runFn7 debugMode4Impl p5 mode gridSize gridDivisions xOff yOff zOff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode5 :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
debugMode5 p5 gridSize gridDivisions gridXOff gridYOff gridZOff axesSize axesXOff axesYOff axesZOff = runFn10 debugMode5Impl p5 gridSize gridDivisions gridXOff gridYOff gridZOff axesSize axesXOff axesYOff axesZOff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noDebugMode)
noDebugMode :: P5 -> (Effect Unit)
noDebugMode p5  = runFn1 noDebugModeImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/orbitControl)
orbitControl :: P5 -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
orbitControl p5 sensitivityX sensitivityY = runFn3 orbitControlImpl p5 sensitivityX sensitivityY
