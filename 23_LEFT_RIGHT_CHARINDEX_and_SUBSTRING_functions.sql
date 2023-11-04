
-- ******************** LEFT, RIGHT, CHARINDEX and SUBSTRING functions *******************

/* 
    Few more commonly used built in string functions in SQL server

    1) LEFT()
    2) RIGHT()
    3) CHARINDEX()
    4) SUBSTRING()
    

    A real time example of using string functions 

*/

/* 

    1) LEFT(Character_Expression, Integer_Expression)     => Returns the specified number of charater from the left hand side
                                                            of the given characers expresion

    2) RIGHT(Character_Expression, Integer_Expression)    => Returns the specified number of characters from the right hand side of 
                                                             of the given character expression

    3) CHARINDEX('Expression_To_Find', 'Expression_To_Search', 'Start_Location')  => Returns the string position of the specified expression in a 
                                                                                    in a character string

    4) SUBSTRING('Expression', 'Start', 'Length')    => Returns substring part of the string from the given expression


*/


=> Select LEFT('ABCDE', 3);    -- ABC  left hend side it pick number of character in our case 3

=> Select RIGHT('ABCDE', 3); -- CDE right hand side it pick 

=> Select CHARINDEX('@', 'mehedi@gmail.com', 1);   -- ('search', 'whichString', startPosition)    output give: 6

=> Select SUBSTRING('mehediHasan', 1, 3);  -- output: meh 


-- some combine function 

=> Select SUBSTRING('pam@bbb.com', CHARINDEX('@', 'pam@bbb.com') + 1,  Len('pam@bbb.com') - CHARINDEX('@', 'pam@bbb.com'));


-- Supposed how many user we have use gmail or other mail domain

=> select SUBSTRING(Email, CHARINDEX('@', Email)+1, Len(Email) - CHARINDEX('@', Email)) as domain
    Count(Email) as Total
    from tblEmployees
    Group by domain;
