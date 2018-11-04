module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Effect.Unsafe (unsafePerformEffect)

import P5

main :: Unit
main = unsafePerformEffect $ do
  p5 $ \p -> do
    setup p do
      createCanvas p 500.0 500.0
      pure unit

    draw p do
      background p "red"
      stroke p "green"
      strokeWeight p 3.0
      line p 0.0 0.0 100.0 100.0
      line p 100.0 100.0 100.0 200.0
      pure unit
