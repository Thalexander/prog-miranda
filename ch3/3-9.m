>|| Exercise 3.9
>|| Uses structural induction to design the function mytake, which works similarly to mydrop but takes the first n items in a list and discards the rest

> mytake :: (num, [*]) -> [*]

The base cases are when the number is 0 or when the list is empty, in that order of matching, if the number is 0 the empty list should be returned, and if the list is empty then an error should be thrown

> mytake (0, xs) = []
> mytake (n, []) = error "mytake - empty list"

The general case is when the number is non-zero and the list is nonempty, in the case of (front : rest) assuming a function body exists for rest then appending front to the recursive call, decrementing n, and supplying rest as the list, for which the body was assumed.

> mytake (n, (x:xs)) = x : mytake (n-1, xs)

In the case where n is negative an empty list error will be thrown, I will leave that case out of consideration now, but an auxilliary function would be the best way to handle this in order to prevent repeated evaluations of the positivity of n
