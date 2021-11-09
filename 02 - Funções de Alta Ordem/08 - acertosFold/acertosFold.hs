acertosFold xs ys = foldr (\x y -> if (xs !! x) == (ys !! x) then 1 + y else 0 + y) 0 [0..((length xs) - 1)]
