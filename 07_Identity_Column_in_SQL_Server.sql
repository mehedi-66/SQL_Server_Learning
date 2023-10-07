

-- ********************** Identity Column in SQL Server **************


/* 
    1) What is Identity column
    2) Create an Identity column
    3) Supply explicit values for identity columns using IDENTITY_INSERT
    4) Reset identity value using DBCC CHECKIDENT command

*/

-- If we loock tblPerson table see there is a Primary Key column ID
-- But it is not a Identity column
-- If we see by right click Property 
-- dioloag box we see => Identity column is False 
-- That is why 

-- How we set a column as Identity column 

-- When we are going to create new table 
-- we see below a Identity Specificaltion 
    -- we set it to be (True) 

    -- we see two option is here
        -- Identity Increment    : by which I increment intering everty record 1 or 5  
        -- Identity Seed         : Where should I start 1 or 100 that determine


-- Imagine a senario that one row deleted 
-- Can we re-use the identity row id value 
    /* 
        1
        2
        3

        but 1 i deleted from table 
        now
        2
        3

        can we re-use 1 Id again newly inserted record


    */
-- when we insert a value to that id column it show error 
-- because we can not explicitly insert a value to identity column

-- so we have to enable identity insert on 

-- An explicit value for the identity column is table 
-- can only be specified when 
-- a column list is used and  IDENTITY_INSERT is ON


=> SET IDENTITY_INSERT tblPerson ON;
   
   Insert into tblPerson (Id, Name) values (1, 'John');

   SET IDENTITY_INSERT tblPerson OFF;


=> Create Table tblPerson
    (
        personId int Identity(1, 1) Primary Key,  -- Ideneity(seed, increment)  => seed where to start and increement by how much earch record
        Name nvarchar(255)
    )



-- Delete every things from the table 
-- can we seed back to spacific position 1 or 5 or 1000

-- Yes we have command call DBCC => database consistancy comand 

-- If you have deleted all th erows in a table and you want to reset the identity column value
-- use DBCC CHECKIDENT command

=> DBCC CHECKIDENT('tblPerson', RESEED, 0)