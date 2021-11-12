printMultipleLines n
    | n <= 0 = return ()
    | otherwise = do 
        putStrLn "Ola Mundo"
        printMultipleLines (n - 1)
     
main = do
    var <- getLine
    let n = read var
    printMultipleLines n
