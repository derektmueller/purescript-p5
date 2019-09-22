module AccelerationEvents where

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
import P5.Environment
import P5.Rendering
import P5.Events.Acceleration

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

  deviceMoved p do
    log "device moved"
    pure unit

  deviceShaken p do
    log "device shaken"
    pure unit

  deviceTurned p do
    log "device turned"
    pure unit

  setup p do
    _ <- createCanvas p w h Nothing
    pure unit

  pure $ Just { p5: p }
