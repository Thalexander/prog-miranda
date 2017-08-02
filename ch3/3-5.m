>|| Exercise 3.5
>|| Provides a stack recursive function to add all numbers less than 3 which appear in a list of numbers

> sum3 :: [num] -> num
> sum3 [] = 0

Terminating case

> sum3 (x : xs) = x + sum3 xs, if x < 3
>               = sum3 xs, otherwise

Recursive calls, using guards to check whether the head is less than 3
