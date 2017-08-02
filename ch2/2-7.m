>|| Exercise 2.7
>|| Write printdots in an accumulative recursive style

> printdots' :: ([char], num) -> [char]

Main function using an accumulator in a pair 

> printdots' (acc, n) = acc, if n < 0

Handle case when negative number is given 

> printdots' (acc, 0) = acc

Terminating case

> printdots' (acc, n) = printdots' (acc ++ ".", n - 1)

Recursive call

> printdots :: num -> [char]

Assistant function to add an empty accumulator to use printdots', leves error checking to printdots'

> printdots n = printdots' ("", n)

