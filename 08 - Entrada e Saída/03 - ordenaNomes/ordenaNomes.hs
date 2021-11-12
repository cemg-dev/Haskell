import Control.Monad
import Data.List
     
main = do
    var <- getLine
    let n = read var
    xss <- sequence [getLine | i <- [1..n]]
    mapM_ putStrLn (sortBy compare xss)
