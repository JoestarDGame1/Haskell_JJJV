lista :: [Int]
lista = [1,4,7]
 
contar :: [a] -> Int
contar []       = 0
contar (_:resto) = 1 + contar resto
 
sumar :: [Int] -> Int
sumar []       = 0
sumar (x:xs)   = x + sumar xs
 
contiene :: Eq a => a -> [a] -> Bool
contiene _ [] = False
contiene buscado (x:xs)
    | buscado == x = True
    | otherwise = contiene buscado xs