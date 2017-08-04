>|| Exercise 4.15
>|| Defines a function union to create a set of all the items in two sets

> union :: [*] -> [*] -> [*]
> union aset bset = rmdups (aset ++ bset)

> rmdups :: [*] -> [*]
> rmdups [] = []
> rmdups (x:xs) = x : rmdups (filter (~= x) xs)
