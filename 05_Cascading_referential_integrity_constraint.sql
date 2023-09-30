
-- *************** Cascading referential integrity constraint *****************

/* 
    In tblPerson table GenderId column as Foreign Key 
     
    What if I ask you what is the Gender of a person 
    By this GenderId of tblPerson table go by Its Referance
    Go to tblGender and Identify the Gender

    Let's imagine If Delete a Gender from a tblGender table
    Then a person which are accociated with GenderId that has no Meaning

    SQL server does not allow this kind of delete 

*/

=> Delete from tblGender Where Id = 2;

--  If tblGender as dependence as foreign key  it will not allow to delete row


-- ************** Cascading referential integrity *************

/* 
    *** 
        Foreign Key Relationship Whindo we See 
            Insert and Update Specification  
            4 option it has:
        
        1) No Action 
        2) Cascade
        3) Set Null
        4) Set Default
        
    ***


    Options when setting up Cascading referential integrity constraint

    1) No Action:  This is the default behaviour. No action specify that if an attempt
                  is mode to delte update a row with a key referenced by foreign keys in 
                  existing rows in other tables an error is
                  raised and the Delete or update is rolled back
            
            if not delete roleback 

    2) Cascade: Specifies that if an attempt is mode to delete or update a row with a key referenced
                by foreign keys in existing rows in other tables all rows containing those foreign keys
                are also deleted or updated

                Depended row also deleted

    3) Set Null: Specifies that if an attempt is mode to delte or update a row with a key referenced
                by foreign key is existing rows in other tables, all rows containing those foreign keys are set to Null
            
            Dependet row set as NULL

    4) Set Default: Specifies that if an attempt is mode to dleete or update a row with a key referenced
                    by foreign key in existing row in other tables all rows containing those foreign keys are set to 
                    default values.
                    
                Depenedet row set valus as default constraint value
*/
