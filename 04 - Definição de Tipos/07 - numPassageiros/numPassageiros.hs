data Trem a = Vagao a (Trem a) | Vazio deriving(Show)
type Quantidade = Int
type Peso = Int
data Carga = SemCarga | Passageiro Quantidade | Mercadoria Peso deriving(Show)
     
listar :: Trem Carga -> [Carga]
listar Vazio = [SemCarga]
listar (Vagao x y) = x:(listar y)
    
getNPassageiros :: Carga -> Int
getNPassageiros SemCarga = 0
getNPassageiros (Passageiro x) = x
getNPassageiros (Mercadoria y) = 0
    
numPassageiros :: Trem Carga -> Int
numPassageiros xs = sum[getNPassageiros x| x <- (listar xs)]
