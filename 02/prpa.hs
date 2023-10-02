
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

