listaSequencia [] = []
listaSequencia (x:xs) = takeWhile (==x) (x:xs) : listaSequencia (dropWhile (==x) (x:xs))
    
pontos xs = maximum[length(x) | x <- (listaSequencia xs)]
