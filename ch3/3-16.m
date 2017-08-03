>|| Exercise 3.16
>|| Alters the sublist function so that "A*" matches the empty string.

> reglist == [([char], char)]
> string == [char]

> sublist :: (reglist, string) -> bool
> sublist ([], any) = True
> sublist (("ZERO_MORE", ch): regrest, []) = sublist (regrest, [])

An additional pattern is added to match a zero or more when there is an empty line, and then check the subsequent characters for a match

> sublist (any, []) = False
> sublist (regexp, line) = startswith (regexp, line) \/ sublist (regexp, tl line)



The remaining function defined here are unmodified and are added to allow testing of the modified sublist function

> startswith :: (reglist, string) -> bool
> startswith ([], any) = True
> startswith (("ONCE", ch) : regrest, []) = False
> startswith (("ZERO_MORE", ch) : regrest, []) = startswith (regrest, [])
> startswith (("ONCE", ch) : regrest, lfront : lrest) = (ch = lfront) & startswith (regrest, lrest)
> startswith (("ZERO_MORE", ch) : regrest, lfront : lrest) = startswith (regrest, (lfront : lrest)) \/
>                                                            ((ch = lfront) & startswith (("ZERO_MORE", ch) : regrest, lrest))
> startswith any = error "startswith"
