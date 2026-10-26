main :: IO ()
main = do
    putStrLn "Introduce palabras separadas por espacios:"
    linea <- getLine
    let listaPalabras = words linea
    print listaPalabras
    