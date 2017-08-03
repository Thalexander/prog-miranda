>|| Exercise 3.8
>|| Provides the function shorterthan used by the final version of mydrop

> shorterthan :: (num, [*]) -> bool

Leaves error checking to the mydrop function

> shorterthan (0, xs) = False

If the length is 0 then the list is longer than the drop amount, then it is not shorter than the drop

> shorterthan (n, []) = True

If the list is empty and the drop amount remains greater than 0 then it is shorter than the drop

> shorterthan (n, (x:xs)) = shorterthan (n-1, xs)

Stack recursive call to decrement n and remove the head from the list

