module Main where

import Prelude 
  (Unit, show, bind, (<$>), pure, discard, unit, ($))
import Effect (Effect)
import Effect.Console (log)
import Data.Maybe (Maybe(..), maybe)
import Data.Int (toNumber)
import Web.HTML (window)
import Web.HTML.Window (innerWidth, innerHeight)

import P5
import P5.Color
import P5.Data
import P5.Environment
import P5.Events
import P5.IO
import P5.Image
import P5.LightsAndCamera
import P5.Math
import P5.Rendering
import P5.Shape
import P5.Structure
import P5.Transform
import P5.Typography

type AppState = {
  p5 :: P5
}

initialState :: Maybe AppState
initialState = Nothing

main :: Maybe AppState -> Effect (Maybe AppState)
main mAppState = do
  win <- window
  w <- toNumber <$> innerWidth win
  h <- toNumber <$> innerHeight win
  p <- maybe getP5 (\x -> pure x.p5) mAppState

  let palette = 
        { a: "#4d0c40"
        , b: "#a11a23"
        , c: "#b29179"
        , d: "#c0a476"
        , e: "#9d7f38"
        }
  setup p do
    _ <- createCanvas p w h Nothing
    pure unit

  draw p do
    background3 p palette.b Nothing
    stroke p palette.a
    strokeWeight p 5.0
    rect p 100.0 100.0 50.0 50.0 Nothing Nothing
    rect p 110.0 110.0 50.0 50.0 Nothing Nothing
    pure unit

  pure $ Just { p5: p }
