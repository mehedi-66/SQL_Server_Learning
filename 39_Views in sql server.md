# *** Views in sql server***
# 
### In this session we will learn 
- What is a View 
- Advantages of using views

# 

A view is nothing more than a saved SQL query. A view can aslo be considered as *virtual* table.
- view not store actual data
- It store only the save SQL query


#
## we have two table

```sql
    Select * from tblDepartment;
    Select * from tblEmployee;
```

### a Query data we get  After run we not store its data anywhere .
```sql
    Select Id, Name, Salary, Gender, DeptName
    from tblEmployee
    join tblDepartment
    on tblEmployee.DepartmentId = tblDepartment.DeptId
```

### We can consider this data as table format for later use


## Create view from this sql query to store info

```sql
    Create view vwEmployeesByDepartment
    as
        Select Id, Name, Salary, Gender, DeptName
        from tblEmplyee
        join tblDepartment
        on tblEmployee.DepartmentId = tblDepartment.DeptId
```

- We can treated this view like as table

```sql 
    Select * from vwEmployeesByDepartment
```

#
### Advantages of views

- Views can be used to reduce the complexity of the database schema
- Views can be sued as a mechanism to Implement row and column level Security. (`we want to hide salary colum It is column level secruirty, where clause row level security we can give`)
- Views can be used to present aggregated data and hide detailed data 
- To modify a view  
- Alter view Statement to Drop a view 
- Drop view vWName.


## to show Aggregate data only

```sql
    Create view vwSummarizedData
    as
        Select DeptName, count(Id) as TotalEmployee
        from tblEmployee
        join tblDepartment
        on tblEmployee.DepartmentId = tblDepartment.DeptId
        Group by DeptName
```

| DeptName | TotalEmployee |
|    Admin |    1          |
|    HR    |    2          |
|     IT   |    2          |
| Payrol   |    1          |


