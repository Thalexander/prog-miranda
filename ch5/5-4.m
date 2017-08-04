>|| Exercise 5.4
>|| Rewrites quicksort using list comprehensions

> quicksort :: [*] -> [*]
> quicksort [] = []
> quicksort (x:[]) = [x]
> quicksort (x:xs) = (quicksort [y | y <- xs; y <= x]) ++ [x] ++ (quicksort [y | y <- xs; y > x])
