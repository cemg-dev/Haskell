insert x [] = [x]
insert x (y:ys) = if x <= y then x:y:ys else y:(insert x ys)
