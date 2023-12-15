
# Temporary tables in SQL Server 

- What are temporary tables
- Types of temporary tables - local and global
- Difference between local and global temp tables

### What are Temporary tables?

- Temporary tables are very similar to the permanent tables.
- Permanent tables get created in the database you specifiy and remain in the database permanently, until you delete (drop) them
- On the other hand temporary tables get created in the **TempDB** and are automatically deleted, when they are no longer used.

- #TableName this # indicate it is temporary table 
 ### Different Types of Temporary tables
 1. Local Temporary tables
 2. Global Temporary tables

 ```sql
    -- Create Local Temporary Table
    Create Table #personDetails(Id int, Name varchar(150));

    -- Insert data into the temporary table
    Insert into #personDetails Values(1, 'Mehedi');

    Select * from #PersonDetails;
 ```

 - This Temporary table is create under system database => tempdb => Temporary_Tables 
 - If we go inside then we see _ _ _ _ random number of the table Table Name 

 # **Imp local** Temporary

- A **local** Temporary table is available, **only for the connection that has create the table**
- That means Querry editor window 1 created tempTable then editor window 2 can not access 

- A local temporary table is automatically dropped, when the connection that has created the it, is closed.

- If the user wants to explicitly drop the temporary table, he can do so using **Drop Table #PersonDetails**

- If temporary table **create under stored procedure** the it autometicaly drop when stored procedure completed 

- Same name of temporary table can be created qurry scopre of **connection editor window** 


# Global Temporary tables 

- To Create Global Temporary table prefix the name of the table with 2 pound symbols.

```sql
    Create Table ##EmployeeDetails(Id int, Name varchar(150));
```

- **Global temporary tables are visible to all the connection** of the sql server and are only destroyed when the last connection referencing the talbe is closed.
 
- Multiple users, across multiple connections can have local temporary tables with the same name, But a Global temporary table name has to be unique 


# difference 
