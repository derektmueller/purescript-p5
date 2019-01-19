module P5.IO.TimeAndDate
  ( day
  , hour
  , millis
  , minute
  , month
  , second
  , year
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import dayImpl :: Fn1 P5 Int
foreign import hourImpl :: Fn1 P5 Int
foreign import millisImpl :: Fn1 P5 Number
foreign import minuteImpl :: Fn1 P5 Int
foreign import monthImpl :: Fn1 P5 Int
foreign import secondImpl :: Fn1 P5 Int
foreign import yearImpl :: Fn1 P5 Int

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/day)
day :: P5 -> Int
day p5  = runFn1 dayImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hour)
hour :: P5 -> Int
hour p5  = runFn1 hourImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/millis)
millis :: P5 -> Number
millis p5  = runFn1 millisImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/minute)
minute :: P5 -> Int
minute p5  = runFn1 minuteImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/month)
month :: P5 -> Int
month p5  = runFn1 monthImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/second)
second :: P5 -> Int
second p5  = runFn1 secondImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/year)
year :: P5 -> Int
year p5  = runFn1 yearImpl p5 
