data Mobile = Pendente Int | Barra Mobile Mobile deriving (Eq, Show)
    
peso :: Mobile -> Int
peso (Pendente x) = x
peso (Barra x y) = (peso x) + (peso y)
     
balanceado :: Mobile -> Bool
balanceado (Pendente x) = True
balanceado (Barra x y) | peso(x) == peso(y) = True && (balanceado x) && (balanceado y)
                       | otherwise = False
