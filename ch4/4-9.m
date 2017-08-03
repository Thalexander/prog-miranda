>|| Exercise 4.8
>|| Defines a function applylist which takes a list of functions (each of type * -> **) and an item (of type *) and returns a list of the results of applying each function to the item.

> applylist :: [(* -> **)] -> * -> [**]
> applylist [] a = []
> applylist (f:fs) a = f a : applylist fs a
