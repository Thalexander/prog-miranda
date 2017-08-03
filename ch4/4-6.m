>|| Exercise 4.6
>|| Explains why myiterate is non-robust and provides a robust version

On being passed a negative integer myiterate would form an infinite loop, to combat this an auxilliary function could be used to validate input

> myiterate :: num -> (* -> *) -> * -> *
> myiterate n ff state = myiterate' n ff state, if n >= 0
>                      = error "myiterate - negative iterations", otherwise

> myiterate' :: num -> (* -> *) -> * -> *
> myiterate' 0 ff state = state
> myiterate' n ff state = myiterate (n-1) ff (ff state)

