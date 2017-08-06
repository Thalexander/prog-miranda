>|| Exercise 7.1
>|| Provides function definitions for the nat primitives

> abstype nat
> with
>     makeNat :: num -> nat
>     natEqual :: nat -> nat -> bool
>     natNotEqual :: nat -> nat -> bool
>     natLess :: nat -> nat -> bool
>     natMore :: nat -> nat -> bool
>     natLessEqual :: nat -> nat -> bool
>     natMoreEqual :: nat -> nat -> bool

>     natPlus :: nat -> nat -> nat
>     natMinus :: nat -> nat -> nat

>     natDisplay :: nat -> num

> nat == absnat

> absnat ::= Zero | Succ absnat

> makeNat 0 = Zero
> makeNat n = Succ (makeNat (n-1)), if n > 0
>           = error "makeNat - negative number", otherwise

> natDisplay Zero = 0
> natDisplay (Succ n) = 1 + natDisplay n

All of these functions could be produced by using natDisplay to convert them into numbers and then using the built in operators, for greater efficiency I will use the nat data type and not convert them.

> natEqual Zero Zero = True
> natEqual (Succ a) Zero = False
> natEqual Zero (Succ b) = False
> natEqual (Succ a) (Succ b) = natEqual a b

> natNotEqual a b = ~ (natEqual a b)

> natLess Zero Zero = False
> natLess Zero (Succ b) = True
> natLess (Succ a) Zero = False
> natLess (Succ a) (Succ b) = natLess a b

> natLessEqual Zero Zero = True
> natLessEqual Zero (Succ b) = True
> natLessEqual (Succ a) Zero = False
> natLessEqual (Succ a) (Succ b) = natLessEqual a b

> natMore Zero Zero = False
> natMore (Succ a) Zero = True
> natMore Zero (Succ b) = False
> natMore (Succ a) (Succ b) = natMore a b

> natMoreEqual Zero Zero = True
> natMoreEqual (Succ a) Zero = True
> natMoreEqual Zero (Succ b) = False
> natMoreEqual (Succ a) (Succ b) = natMoreEqual a b

> natPlus Zero Zero = Zero
> natPlus a Zero = a
> natPlus Zero b = b
> natPlus (Succ a) b = natPlus a (Succ b)

> natMinus Zero Zero = Zero
> natMinus a Zero = a
> natMinus Zero b = error "Negative number produced"
> natMinus (Succ a) (Succ b) = natMinus a b
