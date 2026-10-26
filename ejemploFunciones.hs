personas :: [(String, Int)]
personas =
    [ ("Ana", 28)
    , ("Luis", 17)
    , ("Carlos", 35)
    , ("Maria", 19)
    ]
 
esMayorDeEdad :: (String, Int) -> Bool
esMayorDeEdad (_, edad)
    | edad >= 18 = True
    | otherwise  = False
 
esMayorDeEdad2 :: (String, Int) -> Bool
esMayorDeEdad2 (_, edad) =
    if edad >= 18
        then True
        else False
 
esMayorDeEdad3 :: (String, Int) -> Bool
esMayorDeEdad3 (_, edad) = edad >= 18  
 
esMayorDeEdad4 :: (String, Int) -> Bool
esMayorDeEdad4 persona =
    case persona of
        (_, edad) -> edad >= 18
 
esMayorDeEdad5 :: (String, Int) -> Bool
esMayorDeEdad5 = \( _, edad ) -> edad >= 18   