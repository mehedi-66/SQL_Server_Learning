# Alter database table columns without dropping table 

- Alter database table columns without dropping table 

<img src="./img/C_62.png" />

- altering column form desing show error 
- salary column decalre as nvarchar

```sql
    -- nvarchar can not use as aggregate function 

    Select Gender, Sum(Salary) as Total
    from tblEmployee
    Group by Gender

    -- It will show an error 

```

<img src="./img/C_63.png" />

```sql
    Alter table tblEmployee
    Alter Column Salary int;
```


