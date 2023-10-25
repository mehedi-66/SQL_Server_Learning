
-- ************************ Union and union all in sql server ********************

/* 
    * Purpose of UNION and UNION ALL
    * Difference between union and union
    * Difference between JOIN and UNION

*/

-- UNION and UNION ALL operators in sql server, are used to combine the result-set of two or more 
-- Select queries.


/* 
    tblIndiaCustomer                    tblUKCustomer

    Id    Name    Email               Id        Name        Email
    1     Raj      R@R.com            1         Ben         B@B.com
    2     Sam      S@S.com            2         Sam         S@S.com

*/

-- UNION   combine only the common take on and non common all   

=> select Id, Name, Email from tblIndiaCustomer
    UNION
   Select Id, Name, Email from tblUKCustomers;

/* 
    output:
    Id     Name     Email
    1      Ben       B@B.com
    1      Raj       R@R.com
    2      Sam       S@S.com
*/


-- UNION All  combine the all common and non-common  both table

=> select Id, Name, Email from tblIndiaCustomer
   UNION All
   select Id, Name, Email from tblUKCustomer;

-- Includings duplicates
/* 
    output:
    Id     Name     Email
    1      Raj       R@R.com
    2      Sam       S@S.com
    1      Ben       B@B.co
    2      Sam       S@S.com
*/

-- Note: for union and union all to work
--        the Number, Data Types, and the order ot the columns in the select statemnet should be same;


-- *************** UNION and UNION All  & JOINs *****************
/*
    Difference between UNION and UNION All & JOINs ****************
    1) Union removes duplicate rows, where as UNion all does not
    2) Union has to perform distinct sort to remove duplicates, which makes it less faster than Nnion all

    Note: Estimated query execution plan  => CTRL + L 

*/


-- ************ sorting results of a UNIOn or UNION All *************************
-- Order by clasuse should be used only on the last select statement in the union query



-- *************** Difference between UNION and JOIN *****************
-- Union combines the result set of two or more select queries into a single result set which
-- incluedes all the rows form all the queries in the union, where as 

-- Joins retrives data from two or more tables based on logical relationships between the tables

-- In short, Union combines rows form 2 or more tables, where joins combine columns form 2 or more table


