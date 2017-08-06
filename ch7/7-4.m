>|| Exercise 7.4
>|| Provides a show function for the equence abstract type

> abstype sequence *
> with
>    showsequence :: (* -> [char]) -> sequence * -> [char]

> sequence * == [*]

> showsequence f xs = "Sequence" ++ (foldr ((++) . f) [] xs)
