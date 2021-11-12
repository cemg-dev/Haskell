import Data.List
    
data Gesto = Pedra | Papel | Tesoura
     
ganhaDe :: Gesto -> Gesto -> Bool
ganhaDe Pedra Pedra = False
ganhaDe Pedra Papel = False
ganhaDe Pedra Tesoura = True
ganhaDe Papel Papel = False
ganhaDe Papel Pedra = True
ganhaDe Papel Tesoura = False
ganhaDe Tesoura Tesoura = False
ganhaDe Tesoura Pedra = False
ganhaDe Tesoura Papel = True
    
ganhadores :: [(Gesto,Gesto)] -> [Int]
ganhadores xs = elemIndices True (map (\x -> ganhaDe (fst(x)) (snd(x))) xs)
