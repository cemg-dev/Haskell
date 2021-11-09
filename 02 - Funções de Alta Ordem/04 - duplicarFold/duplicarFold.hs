listaVogais = ['a','e','i','o','u','A','E','I','O','U']

duplicarFold xs = foldr (\x y -> if (x `elem` listaVogais) == True then [x] ++ [x] ++ y else [x] ++ y) [] xs
