productos :: [(String, Double ,Int)]
productos = [("Laptop", 15000.0, 10),
            ("Mouse", 150.5, 20),
            ("Teclado", 250.50, 11),
            ("Funda", 350.0, 15),
            ("Audifonos", 500.0, 5),
            ("Cargador", 200.0, 30),
            ("USB", 100.0, 50),
            ("Monitor", 3000.0, 8)]

menorInventario :: Int -> [(String, Double, Int)] -> [(String, Double, Int)]
menorInventario limite = filter (\(_,_, cantidad) -> cantidad <= limite)

productoMasCaro :: [(String, Double, Int)] -> (String, Double, Int)
productoMasCaro [] = ("", 0.0, 0)
productoMasCaro p = filter (\(_, precio, _) -> precio == maximum (map (\(_, precio, _) -> precio) p)) p !! 0

totalInventario :: [(String, Double, Int)] -> Double
totalInventario p = sum (map (\(_, precio, cantidad) -> precio * fromIntegral cantidad) p)

existeProducto :: String -> [(String, Double, Int)] -> Bool
existeProducto _ [] = False
existeProducto buscado ((nombre, _, _):xs)
    | buscado == nombre = True
    | otherwise = existeProducto buscado xs

contar :: [(String, Double, Int)] -> Int
contar [] = 0
contar (_:resto) = 1 + contar resto