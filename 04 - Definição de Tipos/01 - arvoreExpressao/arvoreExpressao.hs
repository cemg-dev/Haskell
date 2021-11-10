data Expr = Val Int | Soma Expr Expr | Mult Expr Expr | Div Expr Expr | Sub Expr Expr | Mod Expr Expr deriving(Read, Eq, Show)
     
showExpr :: Expr -> String
showExpr (Val x) = show x
showExpr (Soma x y) = "(" ++ showExpr (x) ++ " + " ++ showExpr (y) ++ ")"
showExpr (Mult x y) = "(" ++ showExpr (x) ++ " * " ++ showExpr (y) ++ ")"
showExpr (Div x y) = "(" ++ showExpr (x) ++ " / " ++ showExpr (y) ++ ")"
showExpr (Sub x y) = "(" ++ showExpr (x) ++ " - " ++ showExpr (y) ++ ")"
showExpr (Mod x y) = "(" ++ showExpr (x) ++ " % " ++ showExpr (y) ++ ")"
   
eval :: Expr -> Int
eval (Val x) = x
eval (Soma x y) = eval x + eval y
eval (Mult x y) = eval x * eval y
eval (Div x y) = eval x `div` eval y
eval (Sub x y) = eval x - eval y
eval (Mod x y) = eval x `mod` eval y
