>|| Exercise 4.2
>|| Defines the combinator identity and snd using only the functions distribute and cancel in the function bodies.

> distribute :: (* -> ** -> ***) -> (* -> **) -> * -> ***
> distribute f g x = f x (g x)

> cancel :: * -> ** -> *
> cancel x y = x

> identity :: * -> *
> identity = distribute cancel cancel

cancel x (cancel x)
x



I cannot see how to define snd using only the combinators distribute and cancel, the closest I can come is distribute cancel, which will return the second argument however this requires the first to be a function

