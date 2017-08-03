>|| Exercise 4.4
>|| Provides the function make_curried which allows a curried, dyadic function to accept a tuple as its argument

> make_uncurried :: (* -> ** -> ***) -> (*, **) -> ***
> make_uncurried f (x, y) = f x y
