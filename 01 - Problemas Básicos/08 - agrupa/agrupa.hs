agrupa xss | (length(xss) == 0) || (or[length(xs) == 0| xs <- xss] == True) = []
           | otherwise = [head(xs)| xs <- xss] : agrupa (map (\ys -> drop 1 (ys)) xss)
