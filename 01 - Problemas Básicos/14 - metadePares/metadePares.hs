metadePares xs = map (\x -> div x 2) [x | x <- xs, mod x 2 == 0]
