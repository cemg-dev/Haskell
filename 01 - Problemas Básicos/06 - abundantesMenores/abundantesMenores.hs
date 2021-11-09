abundante n = sum([x | x <- [1..(n-1)], mod n x == 0]) > n
abundantesMenores n = [x | x <- [0..n], abundante x == True]
