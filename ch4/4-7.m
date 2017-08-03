>|| Exercise 4.7
>|| Defines an equivalent function to an imperative while loop

> while :: (* -> *) -> (* -> bool) -> * -> *
> while f p state = while f p (f state), if p state
>                 = state, otherwise
