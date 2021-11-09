divisores n = [x | x <- [1..n], mod n x == 0]
    
isPrimo n = if length(divisores n) == 2 then True else False
    
primos = [x | x <- [2..], (isPrimo x) == True]
    
primosZip = zip primos (tail primos)
     
primosGemeos = filter (\x -> abs(fst(x) - snd(x)) == 2) primosZip
