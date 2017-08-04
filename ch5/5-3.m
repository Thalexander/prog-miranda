>|| Exercise 5.3
>|| Defines a list comprehension that has the same behaviour as the built in function filter

> filter' :: (* -> bool) -> [*] -> [*]
> filter' p xs = [x | x <- xs; p x]
