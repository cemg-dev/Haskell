data Mes = Janeiro 
         | Fevereiro 
         | Marco 
         | Abril 
         | Maio 
         | Junho 
         | Julho 
         | Agosto 
         | Setembro 
         | Outubro
         | Novembro
         | Dezembro
         deriving (Show, Ord, Eq, Enum) 
   
data Date = MkDate {dia :: Int, mes :: Mes, ano :: Int}
   
instance Show Date where
     show (MkDate x y z) = show x ++ " de " ++ show y ++ " de " ++ show z
      
instance Eq Date where
      (MkDate x y z) == (MkDate i j k) = (x == i) && (y == j) && (z == k)
      (MkDate x y z) /= (MkDate i j k) = (x /= i) || (y /= j) || (z /= k)
        
instance Ord Date where
       (MkDate x y z) <= (MkDate i j k) | z > k = False
                                        | (z == k) && ((y > j) || ((y == j) && (x > i))) = False
                                        | otherwise = True
