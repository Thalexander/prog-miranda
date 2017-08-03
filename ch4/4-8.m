>|| Exercise 4.8
>|| Amends the definition of map_two to truncate the longer list when lists of unequal length are provided

> map_two :: (*->**->***) -> [*] -> [**]-> [***]

I have also changed the type to allow different types of list

> map_two ff [] [] = []
> map_two ff (front1 : rest1) (front2: rest2) = (ff front1 front2) : (map_two ff rest1 rest2)
> map_two ff any1 any2 = []

It is sufficient to give an empty list as the definition for the last pattern and saves checking for empty lists, and should only be evaluated last so shouldn't add any additional overhead
