
-- ********************* Different ways to replace NULL in sql server ***************

/* 
    * Different ways to replace NULL values

        * ISNULL() function
        * CASE statement
        * COALESCE() function


*/

/* 
    Emaplyee table:
    Id      Name     ManagerId

    1       Mike      3
    2       Rob       1
    3       Todd      Null
    4       Ben       1
    5       Sam       1


    output:

    Employee       Manager

    Mike           Todd
    Rod            Mike
    Todd           Null       this null value repace with  (  NO Manager )
    Ben            Mike
    Sam            Mike

*/

-- Now want to know how is the manager of  =>  Todd  it is NULL 
-- But we want to replace it as NO Manager

=> Select ISNULL(NULL, 'NO Manager');

-- output is NO Manager

=> Select E.Name as Employee, ISNULL(M.Name, 'NO Manager') as manager
  From tblEmployee E
  Left Join tblEmployee M
  ON    E.EmaplyeeId = M.EmaplyeeId;


-- OR

-- CASE When Expresstion Then '' ELSe '' END


=> Select E.Name as Employee,
    CASE
        When M.Name IS NULL THEN 'NO Manager' ELSE M.Name
    END
    as manager
  From tblEmployee E
  Left Join tblEmployee M
  ON    E.EmaplyeeId = M.EmaplyeeId;


-- OR

=> Select E.Name as Employee, COALESCE(M.Name, 'NO Manager') as manager
  From tblEmployee E
  Left Join tblEmployee M
  ON    E.EmaplyeeId = M.EmaplyeeId;


