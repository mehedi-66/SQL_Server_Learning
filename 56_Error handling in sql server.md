
# *** Error handling in sql server ***

- Error Handling in SQL Server 2005
- Try .... Catch

```sql

        Begin Try
            Begin Transaction

            Commit Transaction

        End Try
        Begin Catch
            Rollback Transaction
        End Catch
```