>|| Exercise 6.5
>|| Provides functions equivalent to the list manipulation functions map and x for the tree data structure

> tree * ::= Tnil | Tree (tree *, *, tree *)

> treemap :: (* -> **) -> tree * -> tree **
> treemap f Tnil = Tnil
> treemap f (Tree (tleft, x, tright)) = Tree (treemap f tleft, f x, treemap f tright)

> treelength :: tree * -> num
> treelength Tnil = 0
> treelength (Tree (tleft, x, tright)) = 1 + treelength tleft + treelength tright
