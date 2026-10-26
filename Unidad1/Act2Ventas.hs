ventas :: [Int]
ventas = [100,200,20,30,550,101,75]

totalVentas :: [Int] -> Int
totalVentas = sum

ventaMenor :: [Int] -> Int
ventaMenor = minimum

promedioVentas :: [Int] -> Float
promedioVentas xs = fromIntegral (sum xs) / fromIntegral (length xs)

ventaMax :: [Int] -> Int
ventaMax = maximum

agregarVenta :: Int -> [Int] -> [Int]
agregarVenta nueva xs = xs ++ [nueva]

