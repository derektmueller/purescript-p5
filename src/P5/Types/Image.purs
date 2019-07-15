module P5.Types.Image
  ( height
  , width
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Prelude (Unit)
import P5.Types

foreign import heightImpl :: Fn2 P5 Image Number
foreign import widthImpl :: Fn2 P5 Image Number

-- | [p5js.org documentation](https://p5js.org/reference/#/p5.Image/height)
height :: P5 -> Image -> Number
height p5 img = runFn2 heightImpl p5 img

-- | [p5js.org documentation](https://p5js.org/reference/#/p5.Image/width)
width :: P5 -> Image -> Number
width p5 img = runFn2 widthImpl p5 img
