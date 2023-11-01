
-- ************************** Stored procedures with output parameters *********************

/* 
    * Creating and executing stored procedures with output parameters
    * Learn about some of the useful system stored procedures

*/

-- * To create an SP with output parameter, we use the keywords OUT or OUTPUT

=> Create Procedure spGetEmployeeCountByGender
  @Gender nvarchar(20),
  @EmployeeCount int output

  as
  Begin
        Select @EmployeeCount = Count(Id) 
        from tblEmployee
        Where Gender = @Gender
  END


-- To execute the stored procedure with output parameters

=> Declare @EmployeeTotal int
   Execute spGetEmployeeCountByGender 'Male', @EmployeeTotal output
   Print @EmployeeTotal

-- OR

=> Declare @EmployeeTotal int
   Execute spGetEmployeeCountByGender @EmployeeCount = @EmployeeTotal out, @Gender = 'Male'
   Print @EmployeeTotal

-- If you don't specify the output keyword, when executing the store procedure, the 
   @EmployeeTotal variable will be NULL




-- ******************** Useful system stored procedures ****************

-- sp_help   procedureName   
 /* 
    views the information about the stored procedure like
    parameter names, their datatypes etc. sp_help can be used with any database
    object, like tables, views, SP's, triggers etc. Alternamtively, you can 
    also press ALt+F1, when the name of the object is highlighted.
 
 */

 -- sp_helptext procedureName 
 /* 
    View the Text of the stored procedure
 */

 -- sp_depends procedureName
 /* 
    View the dependencies of hte stored procedure.
    This system SP is very useful, especially if you wnt to check, 
    If there are any stored proecdures that are 
    referencing a table that you are about to drop. sp_depends 
    can also be used with other database objects like table etc
 
 */