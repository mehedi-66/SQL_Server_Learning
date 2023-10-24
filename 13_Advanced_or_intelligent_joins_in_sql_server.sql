
-- ********************* Advanced or intelligent joins in sql server ***************

/* 
    * Advanced or Intelligent joins in SQL Server
    * Retrieve only the non matching rows from the left table
    * Retrieve only the non matching rows from the right table
    * Retrieve only the non matching rows from both the left and right table


    ***** matching part Exclude *****

*/

-- I want only the non matching rows from the left table

/*
    Select           [column list]
    From             tblEmployee E
    Left JOIN        tblDepartment D 
    ON               E.Id ON D.Id
    Where            D.Id is NULL;

 */


 -- I want only the non matching rows from the Right table

/*
    Select           [column list]
    From             tblEmployee E
    Right JOIN        tblDepartment D 
    ON               E.Id ON D.Id
    Where            E.Id is NULL;

 */



  -- I want only the non matching rows from the Left table and Right table 

/*
    Select           [column list]
    From             tblEmployee E
    Full JOIN        tblDepartment D 
    ON               E.Id ON D.Id
    Where            E.Id is NULL or D.Id is NULL

 */


 -- Note: when we want to use Null use this = instade to ( IS NULL ) 