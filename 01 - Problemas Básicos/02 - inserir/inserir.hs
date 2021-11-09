inserir x [] = [x]
inserir x (y:ys) = if x <= y then x:y:ys else y:(inserir x ys)
