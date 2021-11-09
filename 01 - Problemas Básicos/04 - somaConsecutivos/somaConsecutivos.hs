somaConsecutivos xs = [xs !! i + xs !! (i+1)| i <- [0..(length(xs) - 2)]]
