
-- ************** Replicate, Space, Patindex, Replace and Stuff string functions *********************

/* 
    1) Replicate 
    2) Space
    3) Patindex
    4) Replace
    5) Stuff

*/

/* 

    1) Replicate(String_to_be_Replicate, Number_of_Times_To_Replicate)  => Replicate the given string for the spaecified number of times  
    
    2)  Space(number)  => How may space you wnat that you can specify
    
    3) patindex('%Pattern%', Expression) => Return the starting porsition of the first occurrence of a pattern in a specified expression. It
                                            takes two arguments, the pattern to be searched and the expression. 
                                            PatIndex() is simmial to CharIdex(), with CharIndex() we can not use wildcards, where as PatIndex() 
                                            we provides this capability. If the specified pattern is not found, PatIndex returns Zero;

               
    
    4) replace(String_Expression, Pattern, Replacement_value )  => Replacess all occurrences of a specified string value with anothe string value
    
    5) Stuff(Original_Expression, Start, Length, Replacement_expression)  => STUFF() function inserts Replacement_expression, at the start position specified, along with
                                                                            removing the charactes specified using Length parameter


*/
-- replicate how many times it says
=> Select Replicate('Me ', 3); -- output: Me Me Me

-- we are hiding email address by using Replicate function => me******@gmail.com
-- Mask email columns by 5* star symble
=> Select FirstName, LastName,
        SUBSTRING(Email, 1, 2) + Replicate('*', 5) + 
        SUBSTRING(Email, CHARINDEX('@', Email), Len(Email) - CHARINDEX('@', Email) + 1) as Email

    from tblEmaployee;


-- Space(5)
=> Select FirstName + Space(5) + LastName from tblEmployee;



-- PatIndex => pattern index findout
=> Select Email, PatIndex('%@aaa.com', Email) as FirstOccurence
    from tblEmployees
    where PatIndex('%@aaa.com', Email) > 0

-- Replace all com to net all emails by Replace() 

=> Select Email, Replace(Email, '.com', '.net') as ConvertedEmail
    from tblEmployees;



-- suff(email, 2, 3, '******')  => it start position 2 next 3 charater hide and puth there 5 start

=> Select FirstName, LastName, Email,
    STUFF(Email, 2, 3, '*****') as stuffEmail
   from tblEmployee;