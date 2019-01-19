module P5.Color.Setting
  ( background
  , background2
  , background3
  , background4
  , background5
  , background6
  , clear
  , colorMode
  , colorMode2
  , fill
  , fill2
  , fill3
  , fill4
  , fill5
  , noFill
  , noStroke
  , stroke
  , stroke2
  , stroke3
  , stroke4
  , stroke5
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import backgroundImpl :: Fn2 P5 Color (Effect Unit)
foreign import background2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import background3Impl :: Fn3 P5 String (Maybe Number) (Effect Unit)
foreign import background4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import background5Impl :: Fn3 P5 Image (Maybe Number) (Effect Unit)
foreign import background6Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import clearImpl :: Fn1 P5 (Effect Unit)
foreign import colorModeImpl :: Fn3 P5 ColorMode (Maybe Number) (Effect Unit)
foreign import colorMode2Impl :: Fn6 P5 ColorMode Number Number Number (Maybe Number) (Effect Unit)
foreign import fillImpl :: Fn2 P5 String (Effect Unit)
foreign import fill2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import fill3Impl :: Fn2 P5 Color (Effect Unit)
foreign import fill4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import fill5Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import noFillImpl :: Fn1 P5 (Effect Unit)
foreign import noStrokeImpl :: Fn1 P5 (Effect Unit)
foreign import strokeImpl :: Fn2 P5 String (Effect Unit)
foreign import stroke2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import stroke3Impl :: Fn2 P5 Color (Effect Unit)
foreign import stroke4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import stroke5Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background :: P5 -> Color -> (Effect Unit)
background p5 color = runFn2 backgroundImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background2 :: P5 -> (Array Number) -> (Effect Unit)
background2 p5 values = runFn2 background2Impl p5 values

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background3 :: P5 -> String -> (Maybe Number) -> (Effect Unit)
background3 p5 colorstring a = runFn3 background3Impl p5 colorstring a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
background4 p5 gray a = runFn3 background4Impl p5 gray a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background5 :: P5 -> Image -> (Maybe Number) -> (Effect Unit)
background5 p5 image a = runFn3 background5Impl p5 image a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background6 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
background6 p5 v1 v2 v3 a = runFn5 background6Impl p5 v1 v2 v3 a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/clear)
clear :: P5 -> (Effect Unit)
clear p5  = runFn1 clearImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/colorMode)
colorMode :: P5 -> ColorMode -> (Maybe Number) -> (Effect Unit)
colorMode p5 mode max = runFn3 colorModeImpl p5 mode max

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/colorMode)
colorMode2 :: P5 -> ColorMode -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
colorMode2 p5 mode max1 max2 max3 maxA = runFn6 colorMode2Impl p5 mode max1 max2 max3 maxA

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill :: P5 -> String -> (Effect Unit)
fill p5 value = runFn2 fillImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill2 :: P5 -> (Array Number) -> (Effect Unit)
fill2 p5 values = runFn2 fill2Impl p5 values

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill3 :: P5 -> Color -> (Effect Unit)
fill3 p5 color = runFn2 fill3Impl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
fill4 p5 gray alpha = runFn3 fill4Impl p5 gray alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
fill5 p5 v1 v2 v3 alpha = runFn5 fill5Impl p5 v1 v2 v3 alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noFill)
noFill :: P5 -> (Effect Unit)
noFill p5  = runFn1 noFillImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noStroke)
noStroke :: P5 -> (Effect Unit)
noStroke p5  = runFn1 noStrokeImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke :: P5 -> String -> (Effect Unit)
stroke p5 value = runFn2 strokeImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke2 :: P5 -> (Array Number) -> (Effect Unit)
stroke2 p5 values = runFn2 stroke2Impl p5 values

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke3 :: P5 -> Color -> (Effect Unit)
stroke3 p5 color = runFn2 stroke3Impl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
stroke4 p5 gray alpha = runFn3 stroke4Impl p5 gray alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
stroke5 p5 v1 v2 v3 alpha = runFn5 stroke5Impl p5 v1 v2 v3 alpha
