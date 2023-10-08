
-- *********************** Unique key constraint ******************

/* 
    What is unique key constraint 
    When do you use unique key constraint over primary key constraint
    Difference between unique  key constraint and primary key constraint

*/

-- We use Unique constraint to enforece uniqueness of a column 
-- the column shouldn't allow any duplicate values. 
-- We can add a Unique constraint thru the designer or using a query

-- A table has only one primary key But we force some column like
-- NID, email, 

-- 1) A table can have only one primary key, but more than one unique key
-- 2) Primary key does not allow nulls, where as unique key allows one null


=> Alter Table tblPerson
  Add constraint UQ_tblPerson_Email Unique(Email);

-- Key  folder you should see the Unique constraint


-- Delete the constraint 

=> Alter Table tblPerson 
    Drop constraint UQ_tblPerson_Email;