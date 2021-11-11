data MultiSet a = MultiSet [(a,Int)] deriving (Show)
     
inserir :: Ord a => (a,Int) -> MultiSet a -> MultiSet a
inserir x (MultiSet []) = MultiSet [x]
inserir x (MultiSet (y:xs)) | fst(x) < fst(y) = MultiSet (x:y:xs)
                            | fst(x) > fst(y) = inserir y (inserir x (MultiSet xs))
                            | otherwise = MultiSet ((fst(y),snd(y) + 1):xs)
     
makeMultiSet :: Ord a => [a] -> MultiSet a
makeMultiSet xs = foldr (\x y -> inserir x y) (MultiSet []) ([(x,1) | x<-xs])
