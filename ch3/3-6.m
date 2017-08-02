>|| Exercise 3.6
>|| Rewrites listmax so that it uses an auxilliary function and an explicit accumulator to store the current largest item in the list.

> listmax :: [num] -> num
> listmax [] = error "listmax - empty list"

Throw error on empty list 

> listmax (x:xs) = listmax' (x, xs)

Call aux function 


> listmax' :: (num, [num]) -> num
> listmax' (m, []) = m

Terminating case: return max when list is empty 

> listmax' (m, (x:xs)) = listmax' (x, xs), if x > m
>                      = listmax' (m, xs), otherwise

Recursive calls, when x > m the mex is replaced
