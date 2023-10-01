
-- ***************** Adding a check constraint *******************

/*
    Tips: select tableName press Alt + F1 
          get the full info of the table 

 */
-- Check constraint 

-- check constraint is used to limit the range of the values that can be entered for a column

-- supposed we add a column Age

=> Alter Table tblPerson
   Add Age int;

-- The age column can not be negetive 
-- How we can check it 
-- Here we apply check constraint 
 
 
=> Insert into tblPerson values(4, 'Suchana', 'S@gmail.com', -200);

-- This value will inserted But in Real life it will not possiable Right?

-- To avoid this We can Check range 

-- Graphicaly we go to table and expand we see the => constraint
-- Check constraint window their we basicaly add cosntaint Okay 
-- Constraints are boolean expresson return True or False

-- Enter Expression => Age > 0 and Age < 150
-- Give a Meaningfull Name 

-- After adding check constraints 
=> Insert into tblPerson values(4, 'Suchana', 'S@gmail.com', null);

-- this null insterted why it not through error because null not compair any value 
-- it is unknow that why not return True/False it unknown


-- For Delete constraint we can go for Graphicaly or Drop command

=> Alter Table tblPerson
 Drop Constraint CK_tblPerson_Age;


 -- Add  Check constraint

=> Alter Table tableName
   Add constraint ConstraintName Check(Boolean_Expression)

 => Alter Table tblPerson
    Add Constraint CK_tblPerson_Age Check (Age > 0 AND Age < 100);