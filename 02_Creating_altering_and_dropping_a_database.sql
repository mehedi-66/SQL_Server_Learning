
-- ********************** Creating altering and dropping a database ********************

/* 
    Creating a database one kind of object we are creating
    
    => Create Database Name;
    => Create Table Name;
    => Create View Name;
    => Create Procedure Name;
    => Create Function Name;

*/

Create Database Sample1;

-- After creating the database => going to properties
-- See file option and look two files are Generated 

/* 
    Master Data File 
        .mdf file -Data File (Contains actual data)
    Log Data File
        .ldf file -Transaction Log file (Used to reover the database)

*/

-- Rename the database using Alter or Graphical

Alter database Sample1 Modify Name = Sample2;


-- Another way Rename database by [ System Store Procedure ]

sp_renameDB 'Sample2', 'Sample3';


-- Delete or Drop Database 

Drop database Sample3;

-- Note: When we are using the database any client we can not Drop database that moment 
-- When database are used multiple use database is acting as multiple user Mode
-- You have back database into Single_user_mode then Drop Database

Alter Database Sample3 Set Single_User with Rollback Immediate;

-- with rolback Immediate option, will rollback all incomplete transcation 
-- and close the connection to the database 

--Note: System Database can to be dropped 
