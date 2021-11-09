subconjunto [] ys = True
subconjunto (x:xs) ys = x `elem` ys && subconjunto (xs) (ys)
