main :: IO ()
main = do
    let numeros = [1..10]
 
    putStrLn "Cuadrados:"
    print (map (\x -> x * x) numeros)
 
    putStrLn "Pares:"
    print (filter (\x -> x `mod` 2 == 0) numeros)
 
    putStrLn "Suma:"
    print (foldr (\x acc -> x + acc) 0 numeros)
 
    putStrLn "Producto elemento a elemento:"
    print (zipWith (\a b -> a * b) [1,2,3] [4,5,6])
 
    putStrLn "Impares menores que 10:"
    print (takeWhile (\x -> x < 10) [1,3..])