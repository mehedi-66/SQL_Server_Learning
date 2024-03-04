# Subqueries in sql

- Subqueries in sql server 

--- 

- Example 1
    - Write a query to retrieve products that are not at all sold?

- Example 2
    - write a query to retrieve the Name and TotalQuantity sold?

### From these examples it should be very clear that 
- a subquery is simply a select statement, that returns a single value and 
- can be nested inside a Select, Update, Insert, Delete statement.
- It is also possible to nest a subquery inside another subquery.
- According to MSDN, subqueries can be nested upto 32 level

- Subqueries are always enclosed in paranthesis and are aslo called as inner queries and the query containing the subquery is called as outer query.
- the columns from a table that is present only inside a subquery, cannot be used in the 
- Select list of the outer query

