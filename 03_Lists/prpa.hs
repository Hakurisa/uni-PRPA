oneToHundred = [1..100]

hundredToOne = [100,99..1]

minusOneToMinusTen = [(-1), (-2).. (-10)]

tenToHundredTimesTen = [10,20..100]

hundredToTenTimesTen = [100,90..10]

powerSequence = [ x^2 | x <- [1..10] ]

powerToTwoSequence = [ 2^x | x <- [1..10] ]
    
--seznam, který bude obsahovat všechny variace trojic z prvků 1 až 4

--seznam seznamů
variation = [ [a, b, c] | a <- [1..4], b <- [1..4], c <- [1..4] ]

--seznam n-tic
variation' = [(a,b,c) |  a <- [1..4], b <- [1..4], c <- [1..4] ]

--s lokální proměnnou pomocí "let"
variation'' = let s = [1..4] in [ [a, b, c] | a <- s, b <- s, c <- s ]

powerSequenceEven = [x^2 | x <- [1..10], even x]
powerSequenceEven' = [x^2 | x <- [2,4..10]]

zbytek a d
    | a < d = a
    | otherwise = zbytek (a - d) d

--vytvořte seznam, jehož prvky jsou všechny dělitele čísla 1200600
delitele = let c = 1200600 in [ x | x <- [1..c], (zbytek c x) == 0 ]

--napiste funkci prvni, ktera vrati prvni prvek seznamu
prvni (hlava:_) = hlava

--napiste funkci druhy, ktera vrati druhy prvek seznamu
druhy(_:y:_) = y

--napiste funkci telo, ktera vrati telo seznamu
telo(_:telo) = telo

--napiste funkci posledni, ktera vrati posledni prvek seznamu
posledni [x] = x
posledni (_:xs) = posledni xs

--napiste funkci posledni, ktera vrati predposledni prvek seznamu
predposledni [x,_] = x
predposledni (_:xs) = predposledni xs

--napiste funkci prvek a xs, ktera zjisti, jestli seznam xs obsahuje prvek a
prvek _ [] = False
prvek a (x:xs)
    | a == x = True
    | otherwise = prvek a xs

--napiste funkci nty n xs, ktera vrati n-ty prvek seznamu xs
nty 1 (x:_) = x
nty n (_:xs) = nty (n - 1) xs

--napiste funkci smazPrvni x xs, ktera ze seznamu xs smaze prvni vyskyt prvku x
smazPrvni _ [] = [] --prvek neni nalezen - vratime puvodni seznam
smazPrvni a (x : xs)
    | a == x = xs
    | otherwise = x : (smazPrvni a xs)

--napiste rekurzivni funkci smazVsechny x xs, ktera ze seznamu xs smaze vsechny vyskyty prvku x
smazVsechny _ [] = []
smazVsechny a (x : xs)
    | a == x = smazVsechny a xs
    | otherwise = x : (smazVsechny a xs)

--napiste rekurzivni funkci otoc s, ktera otoci poradi prvku seznamu s
otoc s = otoc' s []

otoc' [] akumulator = akumulator
otoc' (x:xs) akumulator = otoc' xs (x:akumulator)
