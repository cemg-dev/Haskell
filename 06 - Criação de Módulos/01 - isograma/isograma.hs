import qualified Data.Set as Set
import Data.Char
    
isograma xs = and[not(Set.member (lista !! i) (Set.fromList((drop (i+1) lista)))) | i <- [0..(length(lista) - 2)]]
            where lista = filter (\x -> isLetter(x)) (map (\x -> toUpper(x)) xs)
