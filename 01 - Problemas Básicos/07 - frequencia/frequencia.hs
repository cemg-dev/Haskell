frequencia n [] = 0
frequencia n (x:xs) | n == x = 1 + frequencia n (xs)
                    | otherwise = frequencia n (xs)
