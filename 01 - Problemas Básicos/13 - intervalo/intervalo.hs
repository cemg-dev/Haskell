intercala n (x:xs) | length(x:xs) <= 1 = x:xs
                   | otherwise = x:n:intercala n (xs)
