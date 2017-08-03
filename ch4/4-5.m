>|| Exercise 4.5
>|| Provides a definition for the built in function snd based around the use of make_uncurried

> mysnd :: (*, **) -> **
> mysnd = make_uncurried (swap (cancel))

I use swap here assuming that it is allowable based on its use earlier in the chapter

> make_uncurried :: (*->**->***)->(*,**)->***
> make_uncurried ff (x, y) = ff x y

> cancel :: * -> ** -> *
> cancel x y = x

> swap :: (* -> ** -> ***) -> ** -> * -> ***
> swap f x y = f y x
