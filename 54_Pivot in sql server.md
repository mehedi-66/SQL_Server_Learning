# *** Pivot in sql server ***

- Pivot operator 

--- 

- Pivot is sql server operator that can be used to turn unique values from one column 
- into multiple columns in the output, there by effectively rotating a table

- Group by example 
<img src="./img/C_33.png" />

- Pivot example 

<img src="./img/C_34.png" />

```sql
    Select salesAgent, India, US, UK
    From tblProductSales
    Pivot 
   (
     SUM(SalesAmount)
     For SalesCountry
     In ([India], [US], [UK])
   )
   as PivotTable; 

```

- Id column remove by formating 
<img src="./img/C_35.png" />
