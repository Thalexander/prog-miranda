>|| Exercise 4.13
>|| Defines two curried versions of mymember using reduce and accumulate respectively, and discusses their types and differences.

I will use foldl and foldr in place of accumulate and reduce

> mymemberl :: * -> [*] -> bool
> mymemberl i xs = foldl (converse ((\/) . (= i))) False xs

Converse has to be used to flip the arguments to = as foldl would give the bool before the next item for the list

> mymemberr :: * -> [*] -> bool
> mymemberr i xs = foldr ((\/) . (= i)) False xs

Converse does not have to be used here
