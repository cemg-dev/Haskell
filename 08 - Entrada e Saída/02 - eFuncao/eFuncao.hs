import Control.Monad
    
main = do
    var <- getLine
    let n = read var
    xss <- sequence [getLine | i <- [1..n]]
    let yss = [(takeWhile (/= ' ') y, tail(dropWhile (/= ' ') y)) | y <- xss]
    let listaUm = [read (fst(l1)) :: Int | l1 <- yss]
    let listaDois = [read (snd(l2)) :: Int | l2 <- yss]
    let booleanoUm = and[(listaUm !! i) <= (listaUm !! (i + 1)) | i <- [0..(length(listaUm) - 2)]]
    let booleanoDois = and[(listaDois !! i) <= (listaDois !! (i + 1)) | i <- [0..(length(listaUm) - 2)]]
    let booleano = booleanoUm && booleanoDois
    let mensagem = if booleano == True then "YES" else "NO"
    putStrLn mensagem
