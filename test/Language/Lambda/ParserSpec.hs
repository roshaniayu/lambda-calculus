module Language.Lambda.ParserSpec (spec) where

import Test.Hspec

import Language.Lambda.Expression
import Language.Lambda.Parser

spec :: Spec
spec = do
  describe "parseExpr" $ do
    it "parses simple variables" $ do
      parseExpr "x" `shouldBe` Right (Var "x")