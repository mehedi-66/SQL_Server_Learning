
-- ********************* Self join in sql server ****************

/* 
    * Join a table with itself - Self JOIN

    * Self Join can be classified as 

        * Inner Self Join
        * Outer Self Join (Left, Right and Full)
        * Cross Self Join

        Self Join is Not different type of join

        It can be classified under any type of Join

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
    Todd           Null
    Ben            Mike
    Sam            Mike

*/

-- Left self join

Select E.Name as Employee, M.Name as Manager
From tblEmplyee E
Left Join tblEmployee M
On E.EmployeeId = M.EmaplyeeId;



-- Inner self join

Select E.Name as Employee, M.Name as Manager
From tblEmplyee E
Inner Join tblEmployee M
On E.EmployeeId = M.EmaplyeeId;





-- Right self join

Select E.Name as Employee, M.Name as Manager
From tblEmplyee E
Right Join tblEmployee M
On E.EmployeeId = M.EmaplyeeId;



-- Right self join

Select E.Name as Employee, M.Name as Manager
From tblEmplyee E
Cross Join tblEmployee M;