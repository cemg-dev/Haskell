paridadeFold xs | mod (length(foldr (\x y -> if x == True then [x]++y else y) [] xs)) 2 == 0 = True 
                | otherwise = False
