>|| Exercise 2.5
>|| Defines a function nummax which takes a number pair and returns the greater of its two components

> nummax :: (num, num) -> num
> nummax (x, y) = x, if x > y
>               = y, otherwise
