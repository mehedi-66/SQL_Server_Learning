
# *************** Inline table valued functions in sql server *************

 
-    1) Creating Inline Table Valued function
-   2) How to call an Inline Table valued function
-    3) Where do we use inline table valued fucntions


###  Scalar function - Returns a **scallar** value

### Inline Table valued function - Returns a **Table**

#

```SQL
Create Function fn_employeeByGender(@Gender navarchar(10))
Returns Table
AS
Return (
        Select Id, Name, DateOfBirth, Gender, DepartmentId 
        From tblEmployees
        Where Gender = @Gender
        )
```

### 3 key point when we compaire **Scalar VS Inline Table Valued**
1) We specify Table as the return type instade of any scalar data type
2) The function body is not enclosed between **Begin and End** block
3) The structure of the table that gest returned, is determined by the Select statement with in the function 

#

-After creating the function Look Fucntion folder under database where we working

#
## To call the Inline table Valued Function
- We get Table back 
- We can do what ever do on table as like 
```SQL
Select * from fn_EmployeesByGender('Male');

Select * from fn_EmployeeByGender('Male') 
Where Salary > 2000;
```

#
## Where can we use Inline Table valued functions
1) Inline Table Valued functions can be used to achieve the functionality of parameterized values.
2) Table returned by the Table valued function. we can also used in **Join**

## Join example:
```SQL
Select Name, Gender, DepartmentName
From fn_EmployeesByGender('Male') E
Join tblDepartment D On D.Id = E.DepartmnetId;
```

