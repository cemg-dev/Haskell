type Row = [Float]
data Matrix = Matrix{ncols :: Int,  nrows :: Int,  rows :: [Row]}
     
showLine :: Show a => [a] -> String
showLine [] = " "
showLine (x:xs) = " " ++ show x ++ showLine xs
       
instance Show Matrix where
    show (Matrix x y [xs]) = "|" ++ showLine xs ++ "|" 
    show (Matrix x y (xs:xss)) = "|" ++ showLine xs ++ "|" ++ "\n" ++ show (Matrix x y xss)
        
--matriz de zeros
zeroMatrix :: Int -> Int -> Matrix
zeroMatrix x y = Matrix x y ([take x (repeat 0) | i <- [0..(y - 1)]])
    
--matriz de uns
oneMatrix :: Int -> Int -> Matrix
oneMatrix x y = Matrix x y ([take x (repeat 1) | i <- [0..(y - 1)]])
    
--matriz identidade : recebe ordem
identMatrix :: Int -> Matrix
identMatrix n = Matrix n n [(take (i - 1) (repeat 0))++[1]++(take (n - i) (repeat 0)) | i <- [1..n]]
    
--soma duas matrizes
sumMatrix :: Matrix -> Matrix -> Matrix
sumMatrix (Matrix x y xs) (Matrix k n ys) = Matrix x y [[((xs !! i) !! j) + ((ys !! i) !! j) | j <- [0..(x - 1)]] | i <- [0..(y - 1)]] 
    
--produto de escalar por matriz
prodScalar :: Float -> Matrix -> Matrix
prodScalar n (Matrix x y xs) = Matrix x y [[n * j | j <- i] | i <- xs] 
    
--produto entre matrizes
prodMatrix :: Matrix -> Matrix -> Matrix
prodMatrix (Matrix x y xs) (Matrix k n ys) = Matrix x y [[sum[((xs !! i) !! k) * ((ys !! k) !! j) | k <- [0..(y - 1)]] | j <- [0..(x - 1)]] | i <- [0..(y - 1)]]
    
-- transforma listas de listas de floats numa matriz
listToMatrix :: [Row] -> Matrix
listToMatrix (x:xs) = Matrix (length(x)) (length(x:xs)) (x:xs)
