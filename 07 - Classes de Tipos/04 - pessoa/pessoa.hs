import Data.List
    
data Pessoa = Pessoa {nome :: String, idade :: Int, salario :: Float}
     
data Criterio = ByNome | ByIdade | BySalario
     
listaNomes :: [Pessoa] -> [String]
listaNomes xs = map (\(Pessoa x y z) -> x) xs
     
listaIdades :: [Pessoa] -> [Int]
listaIdades xs = map (\(Pessoa x y z) -> y) xs
   
listaSalarios :: [Pessoa] -> [Float]
listaSalarios xs = map (\(Pessoa x y z) -> z) xs
    
getNome :: Pessoa -> String
getNome (Pessoa x y z) = x
    
getIdade :: Pessoa -> Int
getIdade (Pessoa x y z) = y
    
getSalario :: Pessoa -> Float
getSalario (Pessoa x y z) = z
    
sortListPessoa :: [Pessoa] -> Criterio -> [Pessoa]
sortListPessoa xs ByNome = [x | y <- (sortBy compare (listaNomes xs)), x <- xs, getNome(x) == y]
sortListPessoa xs ByIdade = [x | y <- (sortBy compare (listaIdades xs)), x <- xs, getIdade(x) == y]
sortListPessoa xs BySalario = [x | y <- (sortBy compare (listaSalarios xs)), x <- xs, getSalario(x) == y]
    
    
instance Show Pessoa where
    show (Pessoa x y z) = show x ++ " tem " ++ show y ++ " anos e ganha de salario " ++ show z
