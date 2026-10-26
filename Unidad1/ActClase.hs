estudiantes :: [(String, String, Float)]
estudiantes =  [("Ana", "Programación", 9.0),("Luis",
                "Programación", 5.5),("Carlos", "Programación", 8.0),("Maria", "Programación", 6.0)]

--Función 1, Estudiantes aprobados--

aprobados :: Float -> [(String, String, Float)] -> [(String, String, Float)]
aprobados limite xs =
    [(nombre, materia, nota) | (nombre, materia, nota) <- xs, nota >= limite]

--Función 2, Estudiantes reprobados--
reprobados :: Float -> [(String, String, Float)] -> [(String, String, Float)]
reprobados limite xs =
    [(nombre, materia, nota) | (nombre, materia, nota) <- xs, nota < limite]

--Función 3, Estudiantes reprobados (nombres)--

reprobadosNombres :: Float -> [(String, String, Float)] -> [String]
reprobadosNombres limite xs = [nombre | (nombre, _, nota) <- xs, nota < limite]

