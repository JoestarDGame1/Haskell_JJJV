miembros :: [(String, String, Bool)]
miembros =
    [ ("Ana", "septiembre", True)
    , ("Luis", "septiembre", False)
    , ("Carlos","septiembre", True)
    , ("Maria", "septiembre",False)
    ]
yaPago :: (String,String, Bool) -> Bool
yaPago (_,_, pago) = pago    
 
miembrosAlDia :: [(String, String, Bool)] -> [(String, String, Bool)]
miembrosAlDia lista =
    filter yaPago lista