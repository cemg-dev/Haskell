import qualified Data.Set as Set
import Data.Char
    
isPangram xs | (Set.null $ (lista)) == True = False
             | otherwise = (Set.fromList(['A'..'Z'])) `Set.isSubsetOf` lista
                         where lista = (Set.filter (\x -> isLetter(x)) $ (Set.fromList(map (\x ->toUpper(x)) xs)))
