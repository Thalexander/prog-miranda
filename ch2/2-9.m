>|| Exercise 2.9
>|| Provides a function int_divide which divides one whole number by another, the function doesn't use any arithmetic operators except for subtraction, addition and unary minus

> int_divide :: (num, num) -> num
> int_divide (a, 0) = error "Attempting to divide by zero"

Catch divide by zero errors

> int_divide (a, b) = int_divide (-a, -b), if a < 0 & b < 0

Negate both numbers if they are both negative

>                   = -(int_divide (-a, b)), if a < 0
>                   = -(int_divide (a, -b)), if b < 0

Negate result if one of the values is negative

>                   = 1 + int_divide (a-b, b), if a >= b

Subtracts b from a recursively until a < b

>                   = 0, otherwise
                    
As it is integer division, the remainder is ignored.
