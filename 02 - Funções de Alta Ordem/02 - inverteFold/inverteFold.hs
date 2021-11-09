inverteFold xs = foldr (\x y -> y ++ [x]) [] xs
