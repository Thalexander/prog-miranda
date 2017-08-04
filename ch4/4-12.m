>|| Exercise 4.12
>|| Defines the function reduce1 for functions that require at least 1 list item

I will use foldr as equivalent to reduce

> reduce1 :: (* -> * -> *) -> [*] -> *

There is a restriction on type by having the default value being the first element in the list

> reduce1 f [] = error "reduce1 - empty list encountered"
> reduce1 f (x:xs) = foldr f x xs
