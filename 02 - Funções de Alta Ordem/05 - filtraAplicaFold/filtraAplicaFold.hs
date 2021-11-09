filtraAplicaFold f p xs = foldr (\x xy -> [f(x)] ++ xy) [] (foldr (\y ys -> if p(y) == True then [y] ++ ys else ys) [] xs)
