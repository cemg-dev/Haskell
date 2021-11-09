mapFold f xs = foldr (\x z -> [f(x)] ++ z) [] xs
