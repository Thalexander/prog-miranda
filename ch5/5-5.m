>|| Exercise 5.5
>|| Uses a list comprehension to write a function that generates a list of the squares of all the even numbers from a given lower limit to an upper limit and then changes this function to generate an infinite list of even numbers and their squares

> evensquares :: num -> num -> [num]
> evensquares min max = [x * x | x <- [min..max]; x mod 2 = 0]

Rather than using a step of two a predicate is used as the start may not be an even number

> evensquares' :: [(num, num)]
> evensquares' = [(x, x * x) | x <- [0..]; x mod 2 = 0]

This does not handle negative numbers however all the squares of the negatives will be included in the list, which will be composed exclusively of unique values.
