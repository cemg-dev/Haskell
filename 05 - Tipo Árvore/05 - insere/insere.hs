 data MultiSet a = MultiSet [(a,Int)] deriving (Show)
   
--a função insere (a, Int) devido o caso em que fst(x) > fst(y) e é necessário manter este y de alguma forma no MultiSet
inserir :: Ord a => (a, Int) -> MultiSet a -> MultiSet a
inserir x (MultiSet []) = MultiSet [x]
inserir x (MultiSet (y:xs)) | fst(x) < fst(y) = MultiSet (x:y:xs)
                            | fst(x) > fst(y) = inserir y (inserir x (MultiSet xs))
                            | otherwise = MultiSet ((fst(y),snd(y) + 1):xs)
                                 
insere :: Ord a => a -> MultiSet a -> MultiSet a
insere x (MultiSet xs) = inserir (x,1) (MultiSet xs)
