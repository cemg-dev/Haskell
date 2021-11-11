Considere a representação do multiconjunto como uma lista ordenada de pares ordenados.

data MultiSet a = MultiSet [(a,Int)] deriving (Show)

Defina a função delete :: a -> Int -> MultiSet a tal que (delete a n m) devolve  o multiconjunto resultante da deleção de n ocorrências do elemento a no multiconjunto m.


delete 1 2 MultiSet [(1,2)] == MultiSet []

delete1 2 MultiSet [(1,3)] == MultiSet [(1,1)]

delete 7 4 MultiSet [(1,3),(4,1),(5,1),(6,1),(7,1)] == MultiSet [(1,3),(4,1),(5,1),(6,1)]
