kolakoski = 1 : 2 : 2 : concat[take y (repeat x) | (x,y) <- (zip (cycle[1,2]) (drop 2 kolakoski))]
