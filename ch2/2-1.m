>|| Exercise 2.1
>|| Provides a function that checks if a character is alphanumeric

Checks if a character is a number

> isnumber x = '0' <= x <= '9'

Checks if a character is a lower case letter

> islower x = 'a' <= x <= 'z'

Checks if a character is an upper case letter

> isupper x = 'A' <= x <= 'Z'

Checks if a character is a number or letter

> isalphanumeric x = isnumber x \/ islower x \/ isupper x
