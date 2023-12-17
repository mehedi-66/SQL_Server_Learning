# Clustered and nonclustered indexes in sql server

- Different types of indexs in sql server
- What are clustered indexes
- What are NonClustred indexes
- Difference between clustred and non clustred indexes

#
### Folling type are Indexes are available in Sql server
1. Clustered 
2. NonClustered
3. Unique
4. Filtered
5. XML
6. Full Text
7. Spatial
8. Columnstore
9. Index with included columns
10. Index on computed columns

#

- A clustered index determines the physical order of data in a table. For this reason, a table can have only one clustered index.

```sql
    Create Table tblEmplyee
    (
        Id int Primary Key,
        Name varchar(40),
        Salary int
    )
```

- Note that Id column is marked as primary key. Primary key, Constraint created clustered indexes automatically if no clustered index already exists on the table 

- To confirm: 
```sql 
    Execute sp_helpindex tblEmployee
```

- Note that, the values for Id column are not in a sequential order

```sql
    Insert into tblEmplyee Values(3, 'Mehedi', 32000);
    Insert into tblEmplyee Values(1, 'Mehedi', 32000);
    Insert into tblEmplyee Values(2, 'Mehedi', 32000);
    Insert into tblEmplyee Values(12, 'Mehedi', 32000);
```

- Select * from tblEmployee

    | Id   | Name | Salary|
    |------|------|-------|
    | 1    | Mehedi| 32000|
    | 2    | Hasan | 32000|
    | 3    | Hasan | 32000|
    | 12   | Hasan | 32000|

#
### Clustered Index 

- A clustered index is analogous to a telephone directory
- Where the data is arranged by the last name
- **A table can have only one clustered index.**
- The index can contain multiple columns (a composite index) 
- Like the way a telephone directory is organized by last name and first name 

### Create a composite clustered Index on the Gender and Salary columns
- I want the data sort first by Gender then Salary Why?? we create cluster them like IndexPrimary Key
```sql
    Create Clustered Index IX_tblEmployee_Gender_Salary On tblEmployee (Gender DESC, Salary ASC)
```

- Drop Index 

```sql
    Drop Index tblEmployee.IX_NameOfClusterIndex

    or 
    -- phisicaly go table expand then go indexs select and delete 
``` 

#
### NonClustered Index

- A NonClustere Index is analogous to an index in a textbook. 
- The data is stored in one place, the index in another place.
- The index will have pointers to the storeage location of the data 

- The index stores salary of each employee, in the ascending order as shown below. The actual index may look slightly different

|Id   | Name  | Salary |            
| --- | ----- | -------|
|1    | Mehedi  | 3000 |
|2    | Hasan  | 2000 |
|3    | Suchana | 5000 |

| Salary    | Row Address |
| ---       | ---         |
| 2000      | hexCode     |
| 3000      | hexCode     |
| 5000      | hexCode     |

- This row Address created when Indexing 
- This row address pic data from acual table 

- **A table can have more then One NonCluster Index**

```sql
    Create NonClustere Index IX_tblEmployee_Name ON tblEmployee(Name)
```

#
### Difference Between Cluster Vs NonCluster Index

1. - Only one cluster Index per Table But NonCluster more then One 
2. - Cluster Index is Faster than a non-Cluster Index Because, the clustere index has to refere back to the table, If the Selected column is not present in the index.
3. - Clustered index determines the storeage order of rows in the table, and hence dosen't require additional disk space, but where as a non-clustere index is store sparately form the table additional store space is required. 