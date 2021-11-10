splits [] = [([],[])]
splits (x:xs) = (map (\i -> (x:fst(i), snd(i))) (splits xs))++(map (\j -> (fst(j), x:snd(j))) (splits xs))
     
eqsplits xs = [x | x <- (splits xs), sum(fst(x)) == sum(snd(x))]
