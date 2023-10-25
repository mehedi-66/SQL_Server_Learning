
-- ********************* Coalesce function in sql server *****************

/*
    COALESCE() function -- Return the fire NON-NULL value

    Id     FirstName      MiddleName      LastName
    
    1       Sam            NULL             NULL
    2       NULL           Todd             Tanzan
    3       NULL           NULL             Sara
    4       Ben            Parker           NULL
    5       James          Nick             Nancy



    output:

    Id      Name
    
    1       Sam
    2       Todd
    3       Sara
    4       Ben
    5       James

*/

-- If a person has First then Print it
-- else if  a person has Middle then Print it
-- else if a person has Last then Print it

=> Select Id, COALESCE(First, Middle, Last) as Name
  From tblEmployee;


