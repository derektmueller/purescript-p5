module Main where

import Prelude (Unit, bind, discard, pure, unit, ($), (<$>))
--import Effect.Console (log)
import Effect.Unsafe (unsafePerformEffect)
import Data.Maybe (Maybe(..))
import Data.Int (toNumber)
import Web.HTML (window)
import Web.HTML.Window (innerWidth, innerHeight)

import P5 
  (StrokeJoin(..)
  , background3
  , createCanvas, draw, getP5, line, setup, stroke, strokeJoin
  , strokeWeight, rect)

main :: Unit
main = unsafePerformEffect $ do
  win <- window
  w <- toNumber <$> innerWidth win
  h <- toNumber <$> innerHeight win
  p <- getP5

  let palette = 
        { a: "#4d0c40"
        , b: "#a11a23"
        , c: "#b29179"
        , d: "#c0a476"
        , e: "#9d7f38"
        }

  setup p do
    _ <- createCanvas p w h
    pure unit

  draw p do
    background3 p palette.b Nothing
    stroke p palette.a
    strokeWeight p 5.0
    rect p 100.0 100.0 50.0 50.0 Nothing Nothing
    rect p 110.0 110.0 50.0 50.0 Nothing Nothing
    pure unit
  pure unit
