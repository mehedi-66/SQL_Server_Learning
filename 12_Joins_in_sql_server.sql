
-- ****************** Joins in sql server ****************

/* 
    * This different types of Joins in SQL Server
    * Cross Join
    * Inner Join
    * Outer Join - Left, Right and Full Outer Join

*/

-- Join in SQL Server are used to retrieve data from 2 or more related tables
-- In general tables are related to each other using foreign key constraints


-- In SQL server there are different types of JOINS
1) INNER JOIN
2) OUTER JOIN
3) CROSS JOIN 

Outer Joins are again divided into 
1) Left Join or Left Outer Join
2) Right Join or Right Outer Join
3) Full Join or Full Outer Join 


-- INNER JOIN => returns only the matching rows between both tables. No matching rows are eliminated

=> Select Name, Gender, Salary, DepartmentName
  From tblEmployee
  Inner Join tblDepartment on tblEmployee.DepartmentId = tblDepartment.DepartmentId.Id;

-- OR  Inner keyword is optional there 

=> Select Name, Gender, Salary, DepartmentName
  From tblEmployee
  Join tblDepartment on tblEmployee.DepartmentId = tblDepartment.DepartmentId.Id;



-- LEFt JOIN => returns all the matching rows + no matching rows from the left table

=> Select Name, Gender, Salary, DepartmentName
   From tblEmployee 
   Left Outer Join tblDepartment on tblEmployee.DepartmentId = tblDepartment.Id;

-- OR  Outer keywords are optional there 

=> Select Name, Gender, Salary, DepartmentName
   From tblEmployee 
   Left Join tblDepartment on tblEmployee.DepartmentId = tblDepartment.Id;

-- whose value not mathcing that column value give  => NULL   it make sense because it has no record mathing 




-- Right Join => returns all the matching rows + no matching rows from the right table

=> Select Name, Gender, Salary, DepartmentName
   From tblEmployee
   Right Outer Join tblDepartment on tblEmployee.DepartmentId = tblDepartment.Id;

-- OR 

=> Select Name, Gender, Salary, DepartmentName
   From tblEmployee
   Right Outer Join tblDepartment on tblEmployee.DepartmentId = tblDepartment.Id;



-- Full Outer Join => returns all rows from both the left and right tables,
-- Including the not matching rows

=> Select Name, Gender, Salary, DepartmentName
    From tblEmployee
    Full Outer Join tblDepartment on tblEmployee.DepartmentId = tblDepartment.Id;

-- OR 

=> Select Name, Gender, Salary, DepartmentName
    From tblEmployee
    Full  Join tblDepartment on tblEmployee.DepartmentId = tblDepartment.Id;



-- CROSS JOIN => produces the Cartesian product of the 2 tables Involved in the Join. For Exmaple, 
-- in the Employee table we have 10 rows and in the departments table we have 4 Rows, So, a cross join between
-- these 2 tables producess 40 rows.

-- Note: Cross join shouldn't have ON clause.

-- General formula for Joins 
/* 
   Select    Column_LIST
   From      Left_Table
   Join_type  Right_Table
   On        Join_Condition

*/

-- Cross Join

=> Select Name, Gender, Salary, DepartmentName
   From tblEmployee
   Cross Join tblDepartment; 




/* 
    ************* Summary *************

    * Cross Join      => Returns Cartesian Product of the tables involved in the join 
    
    * Inner Join     => Returns Only the matching rows Non matching rows are eliminated

    * Left Join      => Returns all the matching rows + non matching rows from the left table

    * Right Join    => Returns all the matching rows + non matching rows from right tables

    * Full Join    => Returns all the rows from both tables, including the non-matching rows



*/