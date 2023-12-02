
# Important concepts related to functions in sql server

1. - Deterministic and Nondeterministic Functions
2. - Encryptiong functions
3. - Schema binding functions


## Deterministic functions: 
- always return the **same result** any time they are called with a specific set of **input values** and given the same state of the database

    Example: Square(), Power(), Sum(), AVG() and Count()

    => Select Count(Id) from tblEmployee; 

- **Note:** All aggeregate function are deterministic functions 

## Nonedeterministic functions
- **may** return **different results** each time they are called with a specific set of **input values** event if the database state that they access remains the same

    Example: GetDate() and Current_Timestamp

    => Select GetDate();

    **Rand()** function is a Non-Deterministic function, but **if you provide the seed value, the function becomes deterministic**, as the same value gets returned for the same seed value

## Encrypting a function definition using With Encryption Option 
- you can also encrypt a function text. 
- Once, encrypted, you cannot view the text of the function using sp_helptext system stopre procedure. 
- If you try to will get a meessage stating `The text for object is encrypted.`

```sql
    Use WithEncryption

    ----------------------------------
    Create function fn_GetNameById(@Id int)
    Returns nvarchar(30)
    With Encryption
    As
    Begin
        Return (Select Name from tblEmployee where Id = @Id)
    End

    sp_helptext dbo.fn_GetNameById -- this text for object fn_GetNameById is encprypted
```

## Create a function with Schemabinding option

- Schemabinding specifies that the function is bound to the database objects that it references.
- When Schemabinding is specified, the based objects cannot be modified in any way that would affect the function defination 
- The function definition itself must first be modified or dropped to remove dependencies on the object that is to be modified


- This is best practices coz table is another object and function is another object 
- If we delete the table then function dosent know about it 
- After function execute we get error table dose not exits 
- 
```sql
    Use WithSchemabinding
    ---------------------
    Create function fn_GetNameById(@Id int)
    Returns nvarchar(30)
    With Schemabinding
    As
    Begin
        Return (Select Name from dbo.tblEmployee where Id = @Id)
    End
    
    -- No one can delete or any way modification Table after binding  which is affact the function process. got it?? say Name colum drop or delete table
```