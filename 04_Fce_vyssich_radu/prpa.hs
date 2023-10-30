--ulohy - rezy

-- pomoci rezu operatoru pro scitani vytvorte funkci zvysO2, ktera zvysi jeji argument o 2
zvysO2 = (+2)

-- pomoci rezu operatoru pro mocneni vytvorte funkci umocniNa6, ktera umocni jeji argument na 6
umocniNa6 = (^6)

-- pomoci rezu operatoru pro mocneni vytvorte funkci umocni6, ktera umocni hodnotu 6 na jeji argument
umocni6 = (6^)

--vytvorte funkci aplikujBinarniFunkci a b f, ktera aplikuje funkci f na argumenty a & b
aplikujBinarniFunkci a b f = f a b

a1 = aplikujBinarniFunkci 1 2 (+)
a2 = aplikujBinarniFunkci 1 2 (-)
a3 = aplikujBinarniFunkci 1 2 (*)
a4 = aplikujBinarniFunkci 1 2 (/)


abf12 = aplikujBinarniFunkci 1 2

--napiste rekurzivni funkci zvys xs, ktera vsechny prvky seznamu xs zvysi o jednu
zvys [] = []
zvys (x:xs) =  (x+1) : zvys xs

--napiste rekurzivni funkci aplikujNaPrvkySeznamu, ktera zmeni kazdy prvek seznamu libovolnou funkci
aplikujNaPrvkySeznamu _ [] = []
aplikujNaPrvkySeznamu f (x:xs) = (f x) : aplikujNaPrvkySeznamu f xs

aplikaceAbf12 = aplikujNaPrvkySeznamu abf12 [(+),(-),(*),(/)]