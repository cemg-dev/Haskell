remove n [] = []
    remove n (x:xs) | n == x = xs
                    | otherwise = x: (remove n (xs))
