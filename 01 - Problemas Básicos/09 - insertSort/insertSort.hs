insert k [] = [k]
insert k (x:xs) = if k <= x then k:x:xs else x:(insert k xs)
  
insertSort [] = []
insertSort (y:ys) = insert y (insertSort ys)
