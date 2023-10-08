
-- ***************** All About Select *******************


/* 
    Select specific or all columns
    Distinct rows
    Filtering with where clause
    Wild Cards in SQL Server
    Joining multiple conditions using AND and OR operators
    Sorting rows using order by
    Selecting top n or top n percentage of rows

*/

-- Select all the columns 

=> Select * from tblPerson;



-- Distinct row from the table means not duplicate the table

=> Select Distinct City from tblPerson;


-- Filtering City of london

=> Select * from tblPerson Where City = 'London';
=> Select * from tblPerson Where City <> 'London';
=> Select * from tblPerson Where City != 'London';

=> Select * from tblPerson Where Age = 21 or Age = 23 or Age = 29;
=> Select * from tblPerson Where Age IN(20, 24, 29);

=> Select * from tblPerson Where Age between 20 and 25;

=> Select * from tblPerson where City Like 'L%';

-- Email Address
=> Select * from tblPerson where Email Like '%@%';

=> Select * from tblPerson where Email NOT Like '%@%';

=> Select * from tblPerson where FirstName Like 'a[a-z]';  -- list of caracter [a to z] 

-- [^a-f]   not this caracter 

=> => Select * from tblPerson where City = 'London' or City = 'Dhaka';

=> => Select * from tblPerson 
where City = 'London' or City = 'Dhaka'
order by Name Desc,  Age ASC;  -- DESC;



=> Select top 10 * from tblPerson;

=> Select top 2 Percent * from tblPerson;
