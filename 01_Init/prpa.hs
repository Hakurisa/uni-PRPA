main = putStrLn "Nazdar světe!"

mocnina a b = abs a ^ abs b

dvojnasobek a = a * 2

soucetCtvercu a b = mocnina a 2 + mocnina b 2

jeMensi a b = a < b

jeVetsi a b = not (jeMensi a b) -- upravit pro ==


mensi a b = if a > b then b else a

vetsi a b = if a > b then a else b

--pattern matching
-- _ == argument může být libovolná hodnota
logickySoucet True _ = True
logickySoucet _ True = True
logickySoucet _ _ = False

-- vyjádřete pomocí funkce logickySoucet podmínku, která bude platit, pokud a je menší nebo větší než nula
logickaPodminka a = logickySoucet (a > 0) (a < 0)

logickySoucin True True = True
logickySoucin _ _ = False

absolutniHodnota a = if a >= 0 then a else a * (-1)


--guarded equations
absolutniHodnota' a
    | a >= 0    = a
    | otherwise = (-a)
    

--funkce sign 

sign a
    | a > 0 = 1
    | a == 0 = 0
    | otherwise = (-1)