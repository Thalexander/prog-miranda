>|| Exercise 8.1
>|| Adapts the wordcount program so that it will work for more than one input file

> wordcount :: [[char]] -> (num, num, num)
> wordcount infiles = foldr (xwc) (0,0,0) (map read infiles)
>                     where xwc [] (nlines, nwords, nchars) = (nlines, nwords, nchars)
>                           xwc (first : second : rest) (nlines, nwords, nchars) = xwc rest (nlines, (nwords + 1), (nchars + 2)), if member [' ', '\t'] second
>                                                                                = xwc rest (nlines + 1, nwords + 1, nchars + 2), if second = '\n'
>                                                                                = xwc (second : rest) (nlines, nwords, nchars + 1), otherwise
>                           xwc (first : rest) (nlines, nwords, nchars) = xwc rest (nlines, nwords, nchars + 1), if member [' ', '\t'] first
>                                                                       = xwc rest (nlines + 1, nwords, nchars + 1), if first = '\n'
>                                                                       = (nlines, nwords + 1, nchars + 1), otherwise 
