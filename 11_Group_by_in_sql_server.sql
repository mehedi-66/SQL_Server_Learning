
-- ******************** Group by in sql server ******************

/* 
    * Grouping rows using GROUP By
    * Filtering Groups
    * Difference between WHERE and HAVING

*/
-- Group by clasuse is used to group a selected set of rows into a set
-- of summary rows by the values of one or more columns or expression
-- it is always used in conjunction with one or more aggregate function


-- we want to sum all the emeployee using aggregate function

=> select sum(Salary) from tblEmployee; 

=> select MIN(Salary) from tblEmployee;

=> select MAX(Salary) from tblEmployee;


-- Supposed we want to group by City then sum of the city salary acordingly using Group by

=> select City, sum(Salary) from tblEmployee
   Group by City;

-- This query group first then sum of these group salary
/* 
    Rahim London
    Karim London
    Hasan London

    Mehedi Dhaka
    Suchana Dhaka

*/

=> select City, sum(Salary) from tblEmployee;    -- It will show error because it will confuse how to map city with agreage function

=> select City, Gender, sum(Salary) from tblEmployee   -- it will also error because it will confuse to map Gender 
   Group by City;


=> select City, Gender, sum(Salary) from tblEmployee
   Group by City, Gender;


-- total number of employees each group

=> select City, Gender, sum(Salary), count(ID) as totalEmp from tblEmployee
   Group by City, Gender;


-- Filter the rows (with where clause)

=> select City, Gender, sum(Salary), count(ID) as totalEmp from tblEmployee
   where Gender = 'Male'
   Group by City, Gender;

   
-- Same Filter the rows (with Having clause)

=> select City, Gender, sum(Salary), count(ID) as totalEmp from tblEmployee
   
   Group by City, Gender;

   Having Gender = 'Male'            -- Having clause come after the group by



-- Note: where clause reomve row before group and aggregation 
--      But Having clause first group the aggregation then filter to show results

-- In sql server optimization both of the querry but Preferance is use where clause because it remove row first reduce time


-- Difference between Having and Where clause

/* 1) WHERE clause can be used with - select, insert and update statement
    where as HAVING clause can used only Select statement

   2) WHERE clause filters rows before Aggregation (GROUPing),
      where as HAVING clause filter groups, after the aggregations are performed

   3) Aggregate functions cannot be used in the WHERE clause, unless it is in 
      a sub query contained in a HAVING clause, whereas, aggregate functions
      can be used in HAVING clause

*/