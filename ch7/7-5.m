>|| Exercise 7.5
>|| Provides functions to display the day and month in US and UK formats and to display the month as a string

> abstype date
> with
>     makeDate :: num -> num -> num -> date
>     displayUSDate :: date -> [char]
>     displayUKDate :: date -> [char]
>     displayMonth :: date -> [char]

> date == (num, num, num)

> makeDate day month year = (day, month, year)

> displayUSDate (day, month, year) = (show month) ++ "/" ++ (show day) ++ "/" ++ (show year)

> displayUKDate (day, month, year) = (show day) ++ "/" ++ (show month) ++ "/" ++ (show year)

> displayMonth (day, 1, year) = "January"
> displayMonth (day, 2, year) = "February"
> displayMonth (day, 3, year) = "March"
> displayMonth (day, 4, year) = "April"
> displayMonth (day, 5, year) = "May"
> displayMonth (day, 6, year) = "June"
> displayMonth (day, 7, year) = "July"
> displayMonth (day, 8, year) = "August"
> displayMonth (day, 9, year) = "September"
> displayMonth (day, 10, year) = "October"
> displayMonth (day, 11, year) = "November"
> displayMonth (day, 12, year) = "December"
