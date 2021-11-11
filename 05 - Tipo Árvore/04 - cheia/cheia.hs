data ArvBin a = Vazia | No a (ArvBin a) (ArvBin a) deriving (Show,Eq)
    
cheia :: Eq a => ArvBin a -> Bool
cheia Vazia = True
cheia (No x (esq) (dir)) | ((esq) == Vazia) && ((dir) == Vazia) = True
                         | ((esq) /= Vazia) && ((dir) /= Vazia) = (cheia esq) && (cheia dir)
                         | otherwise = False
