data LinkedList a = No a (LinkedList a) | Vazia deriving(Show, Eq)
    
fromList :: [a] -> LinkedList a
fromList [] = Vazia
fromList (x:xs) = No x (fromList(xs))
   
toList :: LinkedList a -> [a]
toList Vazia = []
toList (No x y) = x:(toList(y))
   
append :: a -> LinkedList a -> LinkedList a
append n Vazia = No n (Vazia)
append n (No x y) = No x (append n y)
    
reverseLinkedList :: LinkedList a -> LinkedList a
reverseLinkedList xs = fromList(reverse(toList(xs)))
