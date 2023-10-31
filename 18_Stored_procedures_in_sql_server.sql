
-- ******************** Stored procedures in sql server ***************

/* 
    A stored procedure is group of T-SQL (Transact SQL) statements. 
    If you ha a situation, where you write the same queury over and over again,
    you can save that specific query as a stored
    Procedure and call it just by it's Name

*/

-- 1) Use Create Procedure or Create Proc statement to create SP

/* 
    Note: when naming user defined store procedures, Microsoft recommends not to use  => sp_
          as prefic. All system stored procedures, are prefixed with sp_
          This avoid any ambiguity between user defiend and system stored procedures
          and any conflicts, with smome future system procedure.

*/

-- Some time we have case where same queuey run again and again
-- we can wrap that querry by store prcedure 

=> Select Name, Gender from tblEmployee;

=> Create Porocedure spGetEmployees
   as
   Begin
     select Name, Gender from tblEmployee
   END


-- To run store prcedure => name select on sp then execute
=> spGetEmployees  -- select => exectue
=> EXCE spGetEmployees
=> Execute spGetEmployees
-- Graphical way 
-- right click on sp then execute it Pop-up a window and



-- ********************* Store procedure with parameter ********************

-- create sp that give values by Gender and department
=> Create Proc spGetEmployeesByGenderAndDepartment
   @Gender navarchar(20),
   @Department navarchar(20)

   as
   Begin
        select Name, Gender, DepartmentId from tblEmployee
        Where Gender = @Gender and DepartmentId = @DepartmentId 
   END


-- To execute this spGetEmployeesByGenderAndDepartment
-- We have to supply values to it

=> exectue spGetEmployeesByGenderAndDepartment 'Male', 1    -- here two parameter 
-- In direct value pass we have to keep order acurate 

=> exectue spGetEmployeesByGenderAndDepartment @DepartmentId = 1, @Gender = 'Male'
-- Here Order is Not that much Inportant



-- After creating sp we want to change defication of sp we use => Alter


-- To Delete sp 

=> Drop Proc SPName


-- Encrypt the text of sp

-- To see the text of sp
=> sp_helptext spGetEmployeesByGenderAndDepartment  -- it will show the text of sp

-- we can encrypt the text by

=> create proc spEncryptEmployeess
    With Encryption
    as
    Begin
     Select Name, Gender from tblEmployee;
    END

-- we can not modification or see the encrypete sp text






 




