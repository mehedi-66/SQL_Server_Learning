
# ************************ Multi statement table valued functions in sql server**************************

- Creating Multi-Statement table Valued Function 
- Difference between inline and multi-statement table Valued Function 
--- 
### Inline Table Valued Function 
- **Cast()** gives only the Date part and Remove Time part In this case Type casting 
- **Date** data has only date part not time 

```SQL
Create Function fn_ILTVF_GetEmployee()
Returns Table
As
Return (
        Select Id, Name, Cast(DateOfBirth as Date) as BOD from tblEmployees
    )

-- Run the function 
Select * from fn_ILTVF_GetEmployee();

```

### Multi-statement Table Valued Function 
- @Table it is a varialbe of Table type
- When we want to create a Table we have mention of column along with data type.

```SQL
Create Function fn_MSTVF_GetEmployee()
Returns @Table Table (Id int, Name nvarchar(20), BOD Date)
As
Begin
    Insert Into @Table
    Select Id, Name, Cast(DateOfBirth as Date) From tblEmployees

    Return 
End

-- call the function 
Select * from fn_MSTVF_GetEmployee();
```

### Difference Between them ILTVF vs MSTVF

- In a Iline Table Valued Function the **Returns** clause can not have structure of Table. where ase Mult-Staement has

- Inline Table value not have **Begin and End** but Multi-Statemnt has

- Inline can have better Performance 
-It's possible to update the underlying table using Inline table valued function. but not possible using multi-statement table valued function 


### update by table value by inline function

- multi-statement table not possiable coz @Table it is Temporary it may change column **list and signature**   

```SQL
    Update fn_ILTVF_GetEmployee() 
    set Name = 'Sam'
    where Id = 1
```