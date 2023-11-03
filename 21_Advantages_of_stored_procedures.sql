
-- ***************** Advantages of stored procedures *****************

/* 
    * Advantages fo useing stored Procedures over adhoc queries (inline SQL)

    1) Execution plan retention and reusability 
    2) Reduces network traffic
    3) Code reusability and better maintainability 
    4) Better Security 
    5) Avoids SQL Injection attack


*/

/* 
    what do we mean by Execution plan 
    3 Process happend when we run sql
    
    1)  Check the Syntax of the Querry
    2)  Compiles the SQL statement
    3)  Generate execution plan

    execution plan mean what is the best way to retrive data or get infomation from db

    when you run same querry that time you see it already have execution plan 
    Faster way to get data 

    execution plan cache by SQLServer

*/

-- Normal Addhoc querry can use cache execution plan but little change of that querry it can not reuse the plan 
=> select Name from tblEmployee where Id = 1
=> select Name from tblEmployee where Id = 2

-- pareameter change or space change can not reuse the execution plan 

-- In case storeprocedure reuse the execution plan all the time 
