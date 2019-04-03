module P5.Environment
  ( cursor
  , displayDensity
  , frameCount
  , frameRate
  , frameRate2
  , fullscreen
  , getURL
  , getURLPath
  , noCursor
  , pixelDensity
  , pixelDensity2
  , windowResized
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import cursorImpl :: Fn4 P5 CursorTypeOrString (Maybe Number) (Maybe Number) (Effect Unit)
foreign import displayDensityImpl :: Fn1 P5 Number
foreign import frameCountImpl :: EffectFn1 P5 Int
foreign import frameRateImpl :: Fn1 P5 Number
foreign import frameRate2Impl :: Fn2 P5 Number (Effect Unit)
foreign import fullscreenImpl :: Fn2 P5 (Maybe Boolean) Boolean
foreign import getURLImpl :: Fn1 P5 String
foreign import getURLPathImpl :: Fn1 P5 (Array String)
foreign import noCursorImpl :: Fn1 P5 (Effect Unit)
foreign import pixelDensityImpl :: Fn1 P5 Number
foreign import pixelDensity2Impl :: Fn2 P5 Number (Effect Unit)
foreign import windowResizedImpl :: Fn1 P5 (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cursor)
cursor :: P5 -> CursorTypeOrString -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
cursor p5 _type x y = runFn4 cursorImpl p5 _type x y

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/displayDensity)
displayDensity :: P5 -> Number
displayDensity p5  = runFn1 displayDensityImpl p5

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/frameRate)
frameRate :: P5 -> Number
frameRate p5  = runFn1 frameRateImpl p5

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/frameCount)
frameCount :: P5 -> Effect Int
frameCount = runEffectFn1 frameCountImpl


-- | [p5js.org documentation](https://p5js.org/reference/#/p5/frameRate)
frameRate2 :: P5 -> Number -> (Effect Unit)
frameRate2 p5 fps = runFn2 frameRate2Impl p5 fps

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fullscreen)
fullscreen :: P5 -> (Maybe Boolean) -> Boolean
fullscreen p5 val = runFn2 fullscreenImpl p5 val

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/getURL)
getURL :: P5 -> String
getURL p5  = runFn1 getURLImpl p5

-- TODO: unsupported: getURLParams :: P5 -> Unsupported(Object)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/getURLPath)
getURLPath :: P5 -> (Array String)
getURLPath p5  = runFn1 getURLPathImpl p5

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noCursor)
noCursor :: P5 -> (Effect Unit)
noCursor p5  = runFn1 noCursorImpl p5

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pixelDensity)
pixelDensity :: P5 -> Number
pixelDensity p5  = runFn1 pixelDensityImpl p5

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pixelDensity)
pixelDensity2 :: P5 -> Number -> (Effect Unit)
pixelDensity2 p5 val = runFn2 pixelDensity2Impl p5 val

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/windowResized)
windowResized :: P5 -> (Effect Unit)
windowResized p5  = runFn1 windowResizedImpl p5
