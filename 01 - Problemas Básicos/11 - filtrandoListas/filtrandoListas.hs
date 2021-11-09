filtrandoListas xss = [take i xs| xs <- xss, i <- [0..(length(xs))], length(take i xs) == minimum([length(ys)| ys <- xss])]
