>|| Exercise 2.6
>|| Defines a recursive function to add up all the integers from 1 to a given upper limit

> sum' :: num -> num

Can't restrict to just integers due to use of single num type. 

> sum' x = 0, if x < 0

Catch errors when the input is less than or equal to 0

> sum' 0 = 0

Terminating case

> sum' n = n + sum' (n - 1)

Recursive call
