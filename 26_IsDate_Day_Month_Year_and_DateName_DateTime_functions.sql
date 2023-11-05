
-- ********************* IsDate, Day, Month, Year and DateName DateTime functions **********************

/* 
    * IsDate, Day, Month, Year and DateName
    * A practical example of using these functions

    
*/

-- IsDate()   => Checks if the given value is a valid date, time or datetime, Retuns 1 for success O for failure 

=> Select IsDate('Mehedi') -- Return 0
=> Select IsDate(GetDate()) -- Return 1

=> Select IsDate('2012-08-31 21:02:04.167')  -- Return 1
=> Select IsDate('2012-08-31 21:02:04.167875') -- Return 0

-- Note: For datetime2 values, IsDate return ZERO.



-- Day, Month, Year  functions

-- Day() => Returns thethe day number of the Month of the given date

=> Select Day(GETDATE())  -- Return the current date day number of the month
=> Select Day('01/31/2012') -- Return 31


-- Month()  => Returns the Month number of the year of the given date

=> Select Month(GETDATE()) -- Return the current date, Month of the year
=> Select Month('01/31/2012') -- Return 1

-- Year()  => Returns the Year number of the given date
=> Select Year(GETDATE()) -- Return the current date, Year number
=> Select Year('01/31/2012') -- Return 2012




-- DateName(DatePart, Date)  => Returns a string that represents a part of the given date.
--                                This functions takes 2 parameters. The first Parameter DatePart specifies, the part of the date.
--                                We want The second Parameter is the actual date from which we want the part of the Date

=> Select DateName(Day, '2012-09-30 12:43:46.564')  -- Returns 30
=> Select DateName(WEEKDAY, '2012-09-30 12:43:43.223')  -- Returns Sunday
=> Select DateName(MONTH, '2012-09-30 12:32:43.332')   -- Returns September




=> Select Name, DateOfBirth, DateName(WEEKDAY, DateOfBirth) as [Day]
    Month(DateOfBirth) as MonthNumber
    DateName(MONTH, DateOfBirth) as [MonthName]
    Year(DateOfBirth) as [Year]

from tblEmployee;



