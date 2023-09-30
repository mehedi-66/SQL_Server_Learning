
-- ******************** Adding a default constraint ******************

/* 

    To change the defination by table use => Alter  

*/

=> Insert into tblPerson (Id, Name) Values (7, 'Hasan');

-- If we dont pass value into GenderId column it gets automaticaly null

-- *** Give default constraints  ******
-- we want to asign null value to GenderId column 
-- Altering an existing column to add a default constraint

#=> Alter table TableName
    Add Constraint constraintName
    Default DefaultValue For Existing_Column_Name;


=> Alter Table tblPerson
   Add Constraint DF_tblPerson_GenderId
   Default 3 For GenderId; 

-- If we do not pass value of GenderId now it autometicaly take 3 now.
-- It happend for Default constraint

-- But if you pass value then it will take that value

-- Note: but if you supply value Null directly then it Assign it to NULL value.


 -- ******* Adding a new column, with default value, to an existing table

 #=> Alter Table tblPerson
    Add ColumnName DataType {Null | Not Null}
    Constraint constraintName Default DefaultValue;



-- ********** Drop a constraint **************

#=> Alter Table tblPerson
    Drop Constraint constraintName;