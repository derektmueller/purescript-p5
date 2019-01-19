module P5.Data.Conversion
  ( byte
  , char
  , float
  , hex
  , hex2
  , int2
  , str
  , unchar
  , unchar2
  , unhex
  , unhex2
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import byteImpl :: Fn2 P5 BooleanOrNumberOrString Number
foreign import charImpl :: Fn2 P5 NumberOrString String
foreign import floatImpl :: Fn2 P5 String Number
foreign import hexImpl :: Fn3 P5 Number (Maybe Number) String
foreign import hex2Impl :: Fn3 P5 (Array Number) (Maybe Number) (Array String)
foreign import int2Impl :: Fn3 P5 BooleanOrNumberOrString (Maybe Int) Number
foreign import strImpl :: Fn2 P5 BooleanOrNumberOrString String
foreign import uncharImpl :: Fn2 P5 String Number
foreign import unchar2Impl :: Fn2 P5 (Array String) (Array Number)
foreign import unhexImpl :: Fn2 P5 String Number
foreign import unhex2Impl :: Fn2 P5 (Array String) (Array Number)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/byte)
byte :: P5 -> BooleanOrNumberOrString -> Number
byte p5 n = runFn2 byteImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/char)
char :: P5 -> NumberOrString -> String
char p5 n = runFn2 charImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/float)
float :: P5 -> String -> Number
float p5 str = runFn2 floatImpl p5 str

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hex)
hex :: P5 -> Number -> (Maybe Number) -> String
hex p5 n digits = runFn3 hexImpl p5 n digits

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hex)
hex2 :: P5 -> (Array Number) -> (Maybe Number) -> (Array String)
hex2 p5 ns digits = runFn3 hex2Impl p5 ns digits

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/int)
int2 :: P5 -> BooleanOrNumberOrString -> (Maybe Int) -> Number
int2 p5 n radix = runFn3 int2Impl p5 n radix

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/str)
str :: P5 -> BooleanOrNumberOrString -> String
str p5 n = runFn2 strImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unchar)
unchar :: P5 -> String -> Number
unchar p5 n = runFn2 uncharImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unchar)
unchar2 :: P5 -> (Array String) -> (Array Number)
unchar2 p5 ns = runFn2 unchar2Impl p5 ns

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unhex)
unhex :: P5 -> String -> Number
unhex p5 n = runFn2 unhexImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unhex)
unhex2 :: P5 -> (Array String) -> (Array Number)
unhex2 p5 ns = runFn2 unhex2Impl p5 ns
