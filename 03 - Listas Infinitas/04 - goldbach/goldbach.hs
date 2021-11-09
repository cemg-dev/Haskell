divisores n = [x | x <- [1..n], (mod n x) == 0]
                 
primos n = [x | x <- [2..(n - 1)], length(divisores x) == 2]
     
tupla x (y:ys) [] = tupla x ys (reverse(ys))
tupla x (y:ys) (z:zs)| (y + z) == x = (x,y,z)
                     | otherwise = tupla x (y:ys) zs
     
goldbach n = [tupla x (lista) (reverse(lista)) | x <- [4..n], mod x 2 == 0]
    where lista = (primos n)
