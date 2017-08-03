>|| Exercise 3.10
>|| Provides a function fromto which takes two numbers and a list and outputs all the elements in the list starting from the position indicated by the first number up to the position indicated by the second number

> fromto :: (num, num, [*]) -> [*]
> fromto (a, b, xs) = take (b-a+1) (drop a xs)

As the functions mytake and mydrop have previously been defined I will use drop and take to produce this function
