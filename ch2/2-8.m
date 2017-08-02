>|| Exercise 2.8
>|| Provides the function plus in a stack recursive style

> plus :: (num, num) -> num
> plus (a, b) = a, if b < 0

Catch negative numbers, really would like to use an error function here to terminate evaluation and display something has gone wrong

> plus (a, 0) = a

Terminating case

> plus (a, b) = 1 + plus (a, b - 1)

Recursive call, quite convoluted, doesn't really lend itself towards stack recursion.
