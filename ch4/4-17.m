>|| Exercise 4.17
>|| Defines foldiftrue in terms of a composition of reduce and filter

> foldiftrue :: (* -> bool) -> (* -> ** -> **) -> ** -> [*] -> **
> foldiftrue pred ff default = foldr ff default . filter pred
