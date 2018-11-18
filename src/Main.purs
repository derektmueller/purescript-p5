module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Effect.Unsafe (unsafePerformEffect)

import P5.Generated as Gen
import P5

main :: Unit
main = unsafePerformEffect $ do
  p5 $ \p -> do
    setup p do
      _ <- createCanvas p 500.0 500.0
      pure unit

    draw p do
      background p "red"
      stroke p "green"
      Gen.strokeWeight p 3.0
      Gen.line p 0.0 0.0 100.0 100.0
      Gen.line p 100.0 100.0 100.0 200.0
      Gen.strokeWeight p 10.0
      Gen.line p 100.0 200.0 200.0 200.0
      Gen.line p 200.0 200.0 300.0 300.0
      strokeJoin p Round
      strokeJoin p Bevel
      strokeJoin p Miter
      pure unit
  pure unit
