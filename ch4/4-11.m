>|| Exercise 4.11
>|| Rewrites the function map in terms of reduce

In this case I am using foldr as the library equivalent of reduce

> map' :: (* -> **) -> [*] -> [**]
> map' f = foldr ((:) . f) []
