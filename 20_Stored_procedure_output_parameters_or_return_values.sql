
-- ******************** Stored procedure output parameters or return values ***************

/* 
    * Understand what are stored procedure return values
    * Difference between stored procedure return values and output parameters
    * When to use output parameters over return values


*/

-- Whenever, you execute a stored procedure, it returns an integer status variable,
-- Usually zero indicates sucess, and non-zero indicates failure

=> Create Procedure spGetTotalConutOfEmployee1
   @TotalCount int output

   as
   Begin
        Select @TotalCount = Count(Id) form tblEmployee
   END

=> Declare @TotalEmplyees int
   Execute spGetTotalCountOfEmployees @TotalEmployees output
   Select @TotalEmployees


-- return value as output 

=> Create Prcoedure spGetTotalCountOfEmployee2
    as
    Begin
        return (Select Count(Id) from Employees)
    END


=> Declare @TotalEmployees int
   Execute @TotalEmployees = spGetTotalCountOfEmployee2
   Select @TotalEmployees



-- string output 

=> Create procedure spGetNameById1
    @id  int ,
    @Name nvarchar(20) output
    as
    Begin
        Select @Name = Name from tblEmployee where Id = @id
    END

=> Declare @EmployeeName navarchar(20)
   Execute spGetNameById1, 3, @EmployeeNmae out
   Print 'Name of the Employee = ' + @EmployeeName


-- string Reutrn  

-- Return valeu must be Integer 
-- ouput pareamber can by any type


=> Create Prcoedure spGetNameById2
    @Id int
    as
    Begin
        return (Select Name from tblEmployee where Id = @Id)
    END


=> Declare @EmployeeName nvarchar(20)
    Execute @EmployeeName = spGetNameById2 1
    print 'Name of the Employee' + @EmployeeName




/* 

    Return Status Value                 Output Parameters
    1) Only Integer Datatype           1) Any Datatype
    2) Only one value                  2) More than value
    3) Use to convey sucess or failure  3) Use to return values like name , count etc

    

*/