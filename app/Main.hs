module Main (main) where

import Expr

-- test :: Expr
-- test = Op Mult (Op Sum (Number 3) (Def "func")) (Number 10)

-- vart :: VarTable
-- vart = [("func", Let "x" (Number 3) (Op Pow (Number 2) (Def "x")))]

-- ltest :: Expr
-- ltest = Lamb ["x"] (Op Sum (Def "x") (Number 1))

-- ltestApply ::  Expr
-- ltestApply = Apply ltest (Number 3)

test :: Expr
test = Apply (Def "myFunc") (Number 3) 

vart :: VarTable
vart = [("myFunc", Lamb ["x"] (Op Sum (Def "x") (Number 3)))]

main :: IO ()
main = print $ evalExpr test vart
