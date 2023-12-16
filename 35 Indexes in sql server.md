# Indexes in sql server 

- What are indexes
- Why do we use indexes
- Advantages of indexes

### Key point 
**B-Tree  and BST**
1. - Indexes are used by queries to find data from tables quickly.
2. - Indexes are created on table and view
3. - Index is helping to reduse time of searching
4. - Improve the performance of the querry. 
5. - If indexes not have then querry Scan the table It is bad for performance.

```sql
    Create Index IX_tblEmployee_Salary On tblEmployee (Salary ASC);
```

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

```sql
  sp_Helpindex tblEmployee
```
- to see => IndexName, index_Description, index_keys


## To dorp the index 

```sql
    drop index tblEmployee.Ix_tblEmployee_Salary;
```

