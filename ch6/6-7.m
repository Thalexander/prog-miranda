>|| Exercise 6.7
>|| Provides a function to remove an element from a sorted tree and return a tree that is still sorted

> tree * ::= Tnil | Tree (tree *, *, tree *)

> removeitem :: * -> tree * -> tree *
> removeitem x Tnil = error "Item not in tree"
> removeitem x (Tree (Tnil, x, Tnil)) = Tnil
> removeitem x (Tree (Tnil, x, tright)) = Tree (Tnil, rlowest, removeitem rlowest tright)
>                                         where rlowest = findlowest tright
> removeitem x (Tree (tleft, x, tright)) = Tree (removeitem llowest tleft, llowest, tright)
>                                          where llowest = findlowest tleft
> removeitem x (Tree (tleft, y, tright)) = removeitem x tleft, if x < y
>                                        = removeitem x tright, otherwise

> findlowest :: tree * -> *
> findlowest Tnil = error "Empty tree"
> findlowest (Tree (Tnil, x, Tnil)) = x
> findlowest (Tree (Tree tleft, x, tright)) = findlowest (Tree tleft)
