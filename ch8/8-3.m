>|| Exercise 8.3
>|| Provides the functions readBool and dropBool which will read or discard a boolean value from the start of an input file respectively

> isspace x = member [' ', '\t', '\n'] x
> notspace = (~) . isspace

> readword :: [char] -> [char]
> readword infile = (takewhile notspace (read infile))

> dropword :: [char] -> [char]
> dropword infile = (dropwhile isspace (dropwhile notspace (read infile)))

> readBool :: [char] -> bool
> readBool infile = True, if boolWord = "True"
>             = False, if boolWord = "False"
>             = error "readBool - not a bool", otherwise
>               where boolWord = readword infile

> dropBool :: [char] -> [char]
> dropBool infile = dropword infile, if readAttempt = True \/ readAttempt = False
>                 = error "dropBool - not a bool", otherwise
>                   where readAttempt = readBool infile
