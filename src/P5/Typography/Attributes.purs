module P5.Typography.Attributes
  ( textAlign2
  , textAscent
  , textDescent
  , textLeading
  , textLeading2
  , textSize
  , textSize2
  , textStyle
  , textStyle2
  , textWidth
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import textAlign2Impl :: Fn3 P5 TextAlignHorizAlign (Maybe TextAlignVertAlign) (Effect Unit)
foreign import textAscentImpl :: Fn1 P5 Number
foreign import textDescentImpl :: Fn1 P5 Number
foreign import textLeadingImpl :: Fn1 P5 Number
foreign import textLeading2Impl :: Fn2 P5 Number (Effect Unit)
foreign import textSizeImpl :: Fn1 P5 Number
foreign import textSize2Impl :: Fn2 P5 Number (Effect Unit)
foreign import textStyleImpl :: Fn1 P5 String
foreign import textStyle2Impl :: Fn2 P5 TextStyle (Effect Unit)
foreign import textWidthImpl :: Fn2 P5 String Number

-- TODO: unsupported: textAlign :: P5 -> Unsupported(Object)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textAlign)
textAlign2 :: P5 -> TextAlignHorizAlign -> (Maybe TextAlignVertAlign) -> (Effect Unit)
textAlign2 p5 horizAlign vertAlign = runFn3 textAlign2Impl p5 horizAlign vertAlign

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textAscent)
textAscent :: P5 -> Number
textAscent p5  = runFn1 textAscentImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textDescent)
textDescent :: P5 -> Number
textDescent p5  = runFn1 textDescentImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textLeading)
textLeading :: P5 -> Number
textLeading p5  = runFn1 textLeadingImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textLeading)
textLeading2 :: P5 -> Number -> (Effect Unit)
textLeading2 p5 leading = runFn2 textLeading2Impl p5 leading

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textSize)
textSize :: P5 -> Number
textSize p5  = runFn1 textSizeImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textSize)
textSize2 :: P5 -> Number -> (Effect Unit)
textSize2 p5 theSize = runFn2 textSize2Impl p5 theSize

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textStyle)
textStyle :: P5 -> String
textStyle p5  = runFn1 textStyleImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textStyle)
textStyle2 :: P5 -> TextStyle -> (Effect Unit)
textStyle2 p5 theStyle = runFn2 textStyle2Impl p5 theStyle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textWidth)
textWidth :: P5 -> String -> Number
textWidth p5 theText = runFn2 textWidthImpl p5 theText
