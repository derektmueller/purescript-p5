module Test.Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Test.Spec (pending, describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (run)
import JsdomGlobal

import P5
import P5.Generated as Gen

main :: Effect Unit
main = do
  _ <- jsdomGlobal
  run [consoleReporter] do
    describe "purescript-spec" do
      describe "Attributes" do
        it "awesome" do
          let isAwesome = true
          isAwesome `shouldEqual` true
        pending "feature complete"
      describe "Features" do
        it "runs in NodeJS" $ pure unit
        it "runs in the browser" $ pure unit
        it "supports streaming reporters" $ pure unit
        it "is PureScript 0.10.x compatible" $ pure unit
