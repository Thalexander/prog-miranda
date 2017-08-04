>|| Exercise 6.1
>|| Defines a function to calculate the distance between a pair of coords

> coords ::= Coords (num, num, num)

> distance :: coords -> coords -> num
> distance (Coords (x,y,z)) (Coords (a,b,c)) = ((x-a)^2 + (y-b)^2 + (z-c)^2)^0.5
