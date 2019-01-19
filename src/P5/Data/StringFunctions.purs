module P5.Data.StringFunctions
  ( match
  , matchAll
  , nf
  , nfc
  , nfc2
  , nfp
  , nfp2
  , nfs
  , nfs2
  , split
  , splitTokens
  , trim
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import matchImpl :: Fn3 P5 String String (Array String)
foreign import matchAllImpl :: Fn3 P5 String String (Array String)
foreign import nfImpl :: Fn4 P5 NumberOrString (Maybe IntOrString) (Maybe IntOrString) String
foreign import nfcImpl :: Fn3 P5 NumberOrString (Maybe IntOrString) String
foreign import nfc2Impl :: Fn3 P5 (Array Number) (Maybe IntOrString) (Array String)
foreign import nfpImpl :: Fn4 P5 Number (Maybe Int) (Maybe Int) String
foreign import nfp2Impl :: Fn4 P5 (Array Number) (Maybe Int) (Maybe Int) (Array String)
foreign import nfsImpl :: Fn4 P5 Number (Maybe Int) (Maybe Int) String
foreign import nfs2Impl :: Fn4 P5 (Array Int) (Maybe Int) (Maybe Int) (Array String)
foreign import splitImpl :: Fn3 P5 String String (Array String)
foreign import splitTokensImpl :: Fn3 P5 String (Maybe String) (Array String)
foreign import trimImpl :: Fn2 P5 String String

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/match)
match :: P5 -> String -> String -> (Array String)
match p5 str regexp = runFn3 matchImpl p5 str regexp

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/matchAll)
matchAll :: P5 -> String -> String -> (Array String)
matchAll p5 str regexp = runFn3 matchAllImpl p5 str regexp

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nf)
nf :: P5 -> NumberOrString -> (Maybe IntOrString) -> (Maybe IntOrString) -> String
nf p5 num left right = runFn4 nfImpl p5 num left right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfc)
nfc :: P5 -> NumberOrString -> (Maybe IntOrString) -> String
nfc p5 num right = runFn3 nfcImpl p5 num right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfc)
nfc2 :: P5 -> (Array Number) -> (Maybe IntOrString) -> (Array String)
nfc2 p5 nums right = runFn3 nfc2Impl p5 nums right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfp)
nfp :: P5 -> Number -> (Maybe Int) -> (Maybe Int) -> String
nfp p5 num left right = runFn4 nfpImpl p5 num left right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfp)
nfp2 :: P5 -> (Array Number) -> (Maybe Int) -> (Maybe Int) -> (Array String)
nfp2 p5 nums left right = runFn4 nfp2Impl p5 nums left right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfs)
nfs :: P5 -> Number -> (Maybe Int) -> (Maybe Int) -> String
nfs p5 num left right = runFn4 nfsImpl p5 num left right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfs)
nfs2 :: P5 -> (Array Int) -> (Maybe Int) -> (Maybe Int) -> (Array String)
nfs2 p5 nums left right = runFn4 nfs2Impl p5 nums left right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/split)
split :: P5 -> String -> String -> (Array String)
split p5 value delim = runFn3 splitImpl p5 value delim

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/splitTokens)
splitTokens :: P5 -> String -> (Maybe String) -> (Array String)
splitTokens p5 value delim = runFn3 splitTokensImpl p5 value delim

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/trim)
trim :: P5 -> String -> String
trim p5 str = runFn2 trimImpl p5 str
