divisores n = [x | x <- [1..n], mod n x == 0]
    
isPrimo n = if length(divisores n) == 2 then True else False
     
isPolindromo n = reverse(show n) == show n
    
primosPalindromo = [x | x <- [2..], ((isPrimo x) && (isPolindromo x)) == True]
