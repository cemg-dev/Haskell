descompactaFold lt = ((foldr (\x y -> fst(x) : y) [] lt),(foldr (\x y -> snd(x) : y) [] lt))
