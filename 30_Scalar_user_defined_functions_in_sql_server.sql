
-- ******************* Scalar user defined functions in sql server ********************

/* 
    User Define function 

    1) User Define functions
    2) Types of User Define Function 
    3) Creating a Scalar User Defined Function 
    4) Calling a Scalar User Defined Function
    5) Places where we can use Scalar User Defined function
    6) Altering and Dropping user defiend function

    User Define function in short UDF
*/

/* 
    In SQL Server there are 3 types of User Defined functions 
    1) Scalar function
    2) Inline table-valued function
    3) Multi-statement table-valued function 

*/

/* 
    Scalar functions may or may not have parameters, but always return a single (scalar) value.

    The returned value can be of any data type, except text, ntext, image, cursor and timestamp
    
*/

-- To create a function, we use the following syntax:

=> Create Function functionName(@Parameter1 DataType, @Parameter2 DataType, @ParameterN DataType)
    Returns Return_DataType
    AS 
    Begin
        -- body 
        Return Return_DataType
    End


-- Calculate the age using function 

=> Create Function CalculateAge(@DOB Date)
    Returns Int
    AS 
    Begin
      
        Declare @Age Int
        
        Set @Age = DateDiff(YEAR, @DOB, GetDate()) 
                    -
                    Case
                        When (Month(@DOB) > Month(GetDate())) or
                            (Month(@DOB) = Month(GetDate())) and Day(@DOB) > Day(GetDate());
                        Then 1
                        Else 0
                    End

        Return @Age
    End


-- call this function we need two part Name mention in our case => dbo
=> Select dbo.CalculateAge('10/08/1982');

 -- You can also invoke it using the complete 3 part Name
 -- DatabaseName.OwnerName.FunctionName



-- Scalar user defined functions can be used in the select where clauses
=> Select Name, DateOfBirth, dbo.Age(DateOfBirth) as Age from tblEmployees
    Where dbo.Age(DateOfBirth) > 30;



-- Note: A stored procedure aslo can accept DateOfBirth and return Age.
    -- But you can not use storeprocedur inside select statment 

-- To alter => Alter function FunctionName statment ;

-- To delete => Drop function functionName