>|| Exercise 5.1
>|| Defines a function using where definitions that returns the string that appears before a given sublist in a string

> beforestring :: [char] -> [char] -> [char]
> beforestring [] xs = xs
> beforestring xs [] = []
> beforestring p (x:xs) = x : beforestring p xs, if ~ (startswith p (x:xs))
>                       = [], otherwise
>                         where startswith [] xs = True
>                               startswith xs [] = False
>                               startswith (x:xs) (y:ys) = (x = y) & startswith xs ys
