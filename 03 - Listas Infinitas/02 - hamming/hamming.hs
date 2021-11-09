mescla3 (x:xs) (y:ys) (z:zs) | minimum[x,y,z] == x = x:mescla3 xs (y:ys) (z:zs)
                             | minimum[x,y,z] == y = y:mescla3 (x:xs) ys (z:zs)
                             | otherwise = z:mescla3 (x:xs) (y:ys) zs
     
hamming = [1] ++ mescla3 [2*i | i <- hamming] [3*i | i <- hamming, mod (3*i) 2 /= 0] [5*i | i <- hamming, mod (5*i) 2 /= 0, mod (5*i) 3 /= 0]
