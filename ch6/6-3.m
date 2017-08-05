>|| Exercise 6.3
>|| Provides an algebraic type definition for Bochvar three-state logic and functions for &, \/, and implication

> bochvar ::= T | F | M

True and False are used by the boolean type so I will use T and F, naturally M makes sense as the third state to represent meaningless

I will use conj and disj to represent & and \/ respectively, and imp for logical implication

> conj :: bochvar -> bochvar -> bochvar
> conj M x = M
> conj x M = M
> conj F x = F
> conj x F = F
> conj x x = T

There were limited opportunities for shortcutting here

> disj :: bochvar -> bochvar -> bochvar
> disj M x = M
> disj T M = M
> disj T x = T
> disj F M = M
> disj x T = T
> disj x x = F

> imp :: bochvar -> bochvar -> bochvar
> imp M x = M
> imp F x = x
> imp T T = T
> imp T F = F
> imp x x = M
