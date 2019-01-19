module P5.Color.CreatingAndReading
  ( alpha
  , blue
  , brightness
  , color
  , color2
  , color3
  , color4
  , color5
  , green
  , hue
  , lerpColor
  , lightness
  , red
  , saturation
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import alphaImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import blueImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import brightnessImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import colorImpl :: Fn2 P5 String Color
foreign import color2Impl :: Fn2 P5 (Array Number) Color
foreign import color3Impl :: Fn2 P5 Color Color
foreign import color4Impl :: Fn3 P5 Number (Maybe Number) Color
foreign import color5Impl :: Fn5 P5 Number Number Number (Maybe Number) Color
foreign import greenImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import hueImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import lerpColorImpl :: Fn4 P5 Color Color Number Color
foreign import lightnessImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import redImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import saturationImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/alpha)
alpha :: P5 -> ArrayNumberOrStringOrColor -> Number
alpha p5 color = runFn2 alphaImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/blue)
blue :: P5 -> ArrayNumberOrStringOrColor -> Number
blue p5 color = runFn2 blueImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/brightness)
brightness :: P5 -> ArrayNumberOrStringOrColor -> Number
brightness p5 color = runFn2 brightnessImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/color)
color :: P5 -> String -> Color
color p5 value = runFn2 colorImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/color)
color2 :: P5 -> (Array Number) -> Color
color2 p5 values = runFn2 color2Impl p5 values

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/color)
color3 :: P5 -> Color -> Color
color3 p5 color = runFn2 color3Impl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/color)
color4 :: P5 -> Number -> (Maybe Number) -> Color
color4 p5 gray alpha = runFn3 color4Impl p5 gray alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/color)
color5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> Color
color5 p5 v1 v2 v3 alpha = runFn5 color5Impl p5 v1 v2 v3 alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/green)
green :: P5 -> ArrayNumberOrStringOrColor -> Number
green p5 color = runFn2 greenImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hue)
hue :: P5 -> ArrayNumberOrStringOrColor -> Number
hue p5 color = runFn2 hueImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/lerpColor)
lerpColor :: P5 -> Color -> Color -> Number -> Color
lerpColor p5 c1 c2 amt = runFn4 lerpColorImpl p5 c1 c2 amt

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/lightness)
lightness :: P5 -> ArrayNumberOrStringOrColor -> Number
lightness p5 color = runFn2 lightnessImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/red)
red :: P5 -> ArrayNumberOrStringOrColor -> Number
red p5 color = runFn2 redImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saturation)
saturation :: P5 -> ArrayNumberOrStringOrColor -> Number
saturation p5 color = runFn2 saturationImpl p5 color
