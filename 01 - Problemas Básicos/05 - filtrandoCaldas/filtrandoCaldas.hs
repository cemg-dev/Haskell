filtrandoCaldas xss = [tail(xs) | xs <- xss, null(xs) /= True]
