data Mobile = Pendente Int | Barra Mobile Mobile deriving (Eq, Show)
    
makeMobile :: [Int] -> Mobile
makeMobile [x] = Pendente x
makeMobile xs = Barra (makeMobile (f1 xs)) (makeMobile (f2 xs)) where f1 xs = take (div (length(xs)) 2) xs
                                                                      f2 xs = drop (div (length(xs)) 2) xs
