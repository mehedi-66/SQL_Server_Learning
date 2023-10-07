
-- ************* last generated identity column value  ************

/* 
    How to get the last generated identity column value
    Difference between 
    1) SCOPE_IDENTITY() 
    2) @@Identity 
    3) IDENT_CURRENT('TableName');
*/

-- Create tow table

=> Create Table Test1
(
    Id int identity(1, 1),
    Value nvarchar(20)
)

=> Create Table Test2
(
    Id int identity(1, 1),
    Value nvarchar(20) 
)


-- Lets insert a record  into Table1

=> Insert into Test1 Values("M");

=> Select * from Test1;

=> Select SCOPE_IDENTITY();  -- now we get last inserted ideneity value

=> Select @@IDENTITY     -- now we get same ideneity value 

-- Then what is the difference between this:

-- To understand the difference   

-- => we make triger  (I want to done some process autometicaly )

-- Lets say If Table1 one record is inserted then by tiger 
 -- Table2  record is aslo insert 

=> Create Trigger trForInsert on Test1 for Insert
    as 
    Begin
        Inser into Test2 Values('YYYY')
    End

-- After inserting Table1 value we get
-- SCOPE_IDENTITY() gives 3   => same seasion within in the same Scope 
-- @@IDENTITY       gives 1   => Table2 identity value give because Last Idenity inseted by trigger at Table2



/* 
    => SCOPE_IDENTITY()  : Same session and the same scope 
    => @@IDENTITY        : Same seasion and across any scope
    => IDENT_CURRENT('TableName') : Specific table across any session and any scope


    => tow New Query window consider as two seperate session 
    
    New Query window => User 1      : 

                execute Order 1:    => Insert into table2  values('A');
                
                execute Order 3:    =>   
                                      select SCOPE_IDENTITY();
                                      select @@IDENTITY;
                                      select IDENT_CURRENT();
    
    New Query window => User 2      :

                execute Order 2     =>  Insert into Table2 values('B');



                OUTPUT:  two recorder inserted:

                        1  -> same scope and same session
                        1  -> any scope and same session 
                        2  -> any scope and any session   


*/