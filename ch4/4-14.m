>|| Exercise 4.14
>|| Defines the function mydropwhile which takes a list and a predicate as arguments and returns the list without the initial sublist of members which staisfy the predicate

> mydropwhile :: (* -> bool) -> [*] -> [*]
> mydropwhile p [] = []
> mydropwhile p (x:xs) = mydropwhile p xs, if p x
>                      = x:xs, otherwise
