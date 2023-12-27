
# Unique and Non Unique Indexes in sql server

- what is a unique Index
- Difference between unique index and unique constraint 

### Unique index is used to enforce uniueness of key values in the index

```sql
    Create Table tblEmployee
    (
        Id in Primary Key,
        FirstName nvarchar(50),
        LastName nvarchar(50),
        Salary int,
        Gender nvarchar(10),
        City nvarchar(50)
    )
```
- **Note:** By default, Primary Key constraint, creates a unique clustered index.

- sp helpindex tblEmployee   -- shows all list of index create on this table 

- **Uniqueness** is a property of an index, and both **CLUSTERED** and **NON-CLUSTERED** indexes can be UNIQUE.

```sql
    Create Unique NonClustered index 
    UIX_tblEmployee_FirstName_LastName
    on tblEmployee(FirstName, LastName)
```

- ### Difference between Unique Constraint and Unique Index
- There are no major differences between a unique constraint and a unique index. 
-In fact when you add a unique constraint, a unique index gets created behind the scenes

### Add unique constrains 
```sql
    Alter Table tblEmployee 
    Add Constraint UQ_tblEmployee_city
    Unique (City)
```
- then unique index get create 

- Cluster and non-Cluster also we can define of index 

```sql
    Alter Table tblEmployee 
    Add Constraint UQ_tblEmployee_city
    Unique Clustered (City)
```

### When should you be creating a Unique constraint over a unique index?

- To make our intentions clear, create a unique constraint, when data integrity is the objective.
- This makes the objective of the index very clear. In either case, data is validated in the same manner and the querry optimizer does not differentiate between a unique index created by a unique constraint or manually created 

### Useful points to remember
1. By default a Primary key constraint creates a unique clustered index, where as a UNIQUE constraint creates a unique Non-Clustered index. 
- These defaults can be changed if you wish to 

2. A Unique Constraint or Unique index can not be created on an existing table, If the table contains duplicate values in the key columns. 
- Obviously, to solve this, remove the key columns from the table index definition or delete or update the duplicate values 