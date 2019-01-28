module P5.Types.Color
  ( setRed
  , setGreen
  , setBlue
  , setAlpha
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Prelude (Unit)
import P5.Types

foreign import setRedImpl :: Fn3 P5 Color Number Color
foreign import setGreenImpl :: Fn3 P5 Color Number Color
foreign import setBlueImpl :: Fn3 P5 Color Number Color
foreign import setAlphaImpl :: Fn3 P5 Color Number Color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5.Color/setRed)
setRed :: P5 -> Color -> Number -> Color
setRed p5 color red = runFn3 setRedImpl p5 color red

-- | [p5js.org documentation](https://p5js.org/reference/#/p5.Color/setGreen)
setGreen :: P5 -> Color -> Number -> Color
setGreen p5 color green = runFn3 setGreenImpl p5 color green

-- | [p5js.org documentation](https://p5js.org/reference/#/p5.Color/setBlue)
setBlue :: P5 -> Color -> Number -> Color
setBlue p5 color blue = runFn3 setBlueImpl p5 color blue

-- | [p5js.org documentation](https://p5js.org/reference/#/p5.Color/setAlpha)
setAlpha :: P5 -> Color -> Number -> Color
setAlpha p5 color alpha = runFn3 setAlphaImpl p5 color alpha
