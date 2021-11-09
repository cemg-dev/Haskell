f 1 = []
f n = if ((mod n 2) == 0) then (div n 2): f (div n 2) else ((3 * n) + 1): f ((3 * n) + 1)

collatz n = n : f n
