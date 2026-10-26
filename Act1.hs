lista :: [String]
lista = ["un","nuevo","dia"]
lista2 :: [String]
lista2 = ["soleado","resplandeciente"]

removeLast :: [a] -> [a]
removeLast [] = []
removeLast xs = init xs

invertir :: [a] -> [a]
invertir = reverse

unirLista :: [a] -> [a] -> [a]
unirLista = (++)

encontrarElemento :: Eq a => a -> [a] -> Bool
encontrarElemento = elem
