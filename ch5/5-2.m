>|| Exercise 5.2
>|| Defines the function lines using a where definition

> lines' :: [char] -> [[char]]
> lines' [] = []
> lines' zs = line : lines' remainder
>             where (line, remainder) = extractline ([], zs)
>                   extractline (xs, [])      = (xs, [])
>                   extractline (xs, '\n':ys) = (xs, ys)
>                   extractline (xs, y:ys)    = extractline (xs ++ [y], ys)
