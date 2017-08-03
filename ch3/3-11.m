>|| Exercise 3.11
>|| Modifies the skipbrackets program to cater for nested brackets

> skipbrackets :: [char] -> [char]
> skipbrackets [] = []
> skipbrackets ('(' : rest) = skipbrackets (inbrackets rest)
> skipbrackets (front : rest) = front : skipbrackets rest

The skipbrackets function is unaltered

> inbrackets :: [char] -> [char]
> inbrackets [] = error "text ends inside a bracket pair"
> inbrackets (')' : rest) = rest

In the case of an open brackets it should call itself adding another call to the stack so it has to wait until all inbracket calls have found a close brackets to return control to skipbrackets

> inbrackets ('(' : rest) = inbrackets (inbrackets rest)
> inbrackets (front : rest) = inbrackets rest
