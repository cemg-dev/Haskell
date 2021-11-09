remdups [] = []
remdups (x:xs) = x:remdups(dropWhile (==x) (xs))
