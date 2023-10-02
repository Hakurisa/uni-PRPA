
--if
factorial n = if n > 0 then n * factorial (n - 1) else if n == 0 then 1 else error "This no work!!! User bad!"

--guarded statement
factorial' n
    | n == 0 = 1
    | n < 0 = error "It's so over"
    | otherwise = n * factorial' (n - 1)

--pattern matching
factorial'' 0 = 1
factorial'' n = n * factorial'' (n - 1)

--Napište funkci nsd, která vrátí největšího společného dělitele dvou celých čísel
nsd a 0 = a
nsd a b = nsd b zbytek 
    where zbytek = (rem a b) --zbytek

--Napište funkci korenyLinRovnice a b, která spočte kořeny lineární rovnice ve tvaru ax+b = 0
-- haskell is advanced - /= is what everywhere else is !=
korenyLinRovnice a b 
    | a == 0 = error "Nemá jednoznačné řešení"
    | otherwise = (-b) / a

--napište funkci zbytek a d, která vypočte zbytek po celočíselném dělení nezáporného čísla a kladným číslem d 
--bez použití dělení a násobení

zbytek a d
    | a < d = a
    | otherwise = zbytek (a - d) d

--napište funkci otocCislice, která otočí pořadí číslic v celém čísle zapsané v desítkové soustavě
--TODO - dodělat
otocCislice a = zbytek a 10 