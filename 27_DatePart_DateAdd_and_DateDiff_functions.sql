
-- ************** DatePart, DateAdd and DateDiff functions **************

/* 
    * DatePart, DateAdd and DateDiff functions in SQL Server
    * A practical example of using these functions 
    
*/

-- DatePart(DatePart, Date) => Returns an integer representing the specified DatePart. 
--                            This function is similar to DateName(). DateName() returns nvarchar,
--                            Where as DatePart() retumns an integer


=> Select DatePart(weekday, '2012-08-30 19:45:31.978')   --=> 5
=> Select DateName(weekday, '2012-08-30 19:45:31.789')   --=> Return Thursday


-- DateAdd(datePart, NumberToAdd, Date) => Returns the DateTime, after adding specified NumberToAdd, to the datepart specified ot
-- of the given date

=> Select DateAdd(Day, 20, '2012-08-30 19:45:31.798')  --=> Returns 2012-09-19  19:45:31.793
=> Select  DateAdd(Day, -20, '2012-09-19 19:45:31.939')  --=> Return 2012-08-10 19:45:31.939


-- DateDiff(datepart, startdate, enddate) => Return the count of the specified datepart boundaries crossed between the specified startdate and enddate

=> Select DateDiff(MONTH, '11/30/2005', '01/31/2006') --=> Return 2
=> Select DateDiff(Day, '11/30/2005', '01/31/2006')   --=> Return 62



-- ****************** Example of finding AGE of Person ***************

CREATE FUNCTION fnComputeAge(@DOB DATETIME)
RETURNS NVARCHAR(50)
AS
BEGIN

DECLARE @tempdate DATETIME, @years INT, @months INT, @days INT
SELECT @tempdate = @DOB

SELECT @years = DATEDIFF(YEAR, @tempdate, GETDATE()) - CASE WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR (MONTH(@DOB) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE())) THEN 1 ELSE 0 END
SELECT @tempdate = DATEADD(YEAR, @years, @tempdate)



SELECT @months = DATEDIFF(MONTH, @tempdate, GETDATE()) - CASE WHEN DAY(@DOB) > DAY(GETDATE()) THEN 1 ELSE 0 END
SELECT @tempdate = DATEADD(MONTH, @months, @tempdate)

SELECT @days = DATEDIFF(DAY, @tempdate, GETDATE())

DECLARE @Age NVARCHAR(50)
SET @Age = Cast(@years AS  NVARCHAR(4)) + ' Years ' + Cast(@months AS  NVARCHAR(2))+ ' Months ' +  Cast(@days AS  NVARCHAR(2))+ ' Days Old'
RETURN @Age

End

