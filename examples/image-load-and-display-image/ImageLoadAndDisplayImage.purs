module ImageLoadingAndDisplayImage where

import Prelude 
  (Unit, show, bind, (<$>), pure, discard, unit, ($), (/), (<>))
import Effect (Effect)
import Effect.Console (log)
import Data.Maybe (Maybe(..), maybe)
import Data.Int (toNumber)
import Web.HTML (window)
import Web.HTML.Window (innerWidth, innerHeight)

import P5
import P5.Color
import P5.Types.Image as Image
import P5.Environment
import P5.Rendering
import P5.Image.LoadingAndDisplaying

type AppState = {
  p5 :: P5
}

initialState :: Maybe AppState
initialState = Nothing

main :: Maybe AppState -> Effect (Maybe AppState)
main mAppState = do
  win <- window
  let w = 720.0
      h = 400.0
  p <- maybe getP5 (\x -> pure x.p5) mAppState

  setup p do
    _ <- createCanvas p w h Nothing
    pure unit

  draw p do
    let successCallback = \img -> do
          log $ "image loaded (" <> show (Image.width p img) <> " x " 
            <> show (Image.height p img) <> ")"
        img = loadImage p "moonwalk.jpg" (Just successCallback) Nothing
    image p (ElementOrImageImage img) 0.0 0.0 Nothing Nothing
    image p (ElementOrImageImage img) 0.0 ((height p) / 2.0) 
      (Just ((Image.width p img) / 2.0)) 
      (Just ((Image.height p img) / 2.0))
    pure unit

  pure $ Just { p5: p }
