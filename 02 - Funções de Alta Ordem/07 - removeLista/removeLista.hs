removeLista xs ys = foldr (\x z -> if (x `elem` xs) == True then z else [x] ++ z) [] ys
