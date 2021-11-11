data Arv a = Vazia | No a (Arv a) (Arv a) deriving(Show)
    
insertArvore :: Ord a => a -> Arv a -> Arv a
insertArvore x Vazia = No x Vazia Vazia
insertArvore x (No a esq dir) | (x <= a) = No a (insertArvore x esq) dir
                              | (x >= a) = No a esq (insertArvore x dir)
                              | otherwise = No a esq dir
                                  
fromList :: Ord a => [a] -> Arv a
fromList (xs) = foldr (\x y -> insertArvore x y) Vazia (reverse xs)
