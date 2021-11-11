data ArvBin a = Vazia | No a (ArvBin a) (ArvBin a) deriving (Show)
    
removeFolhas :: ArvBin a -> ArvBin a
removeFolhas Vazia = Vazia
removeFolhas (No x Vazia Vazia) = Vazia
removeFolhas (No x (esq) (dir)) = No x (removeFolhas esq) (removeFolhas dir)
