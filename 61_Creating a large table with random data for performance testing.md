# Creating a large table with random data for performance testing

- Inserting large amount of random data into sql server tables for performance testing 

- this exists function return **true** if table has 
```sql
    -- If table exists drop and recreate

    If(Exists (select * from information_schema.tables 
    where table_name = 'tblProductSales'))
    Begin
        Drop Table tblProductSales;
    End

    If(Exists (select * from information_schema.tables
    where table_name = 'tblProducts'))
    Begin
        Drop Table tblProducts;
    End

    -- ReCreate those tables 
    Create Table tblProducts
    (
        [Id] int identity primary key,
        [Name] nvarchar(50),
        [Description] nvarchar(250)
    );

    Create Table tblProductSales
    (
        Id int primary key identity,
        ProductId int foreign key references tblProducts(Id),
        UnitPrice int,
        QuantitySold int
    )

    -- Insert sample data into tblProducts table
    Declare @Id int 
    set @Id = 1

    while(@Id <= 10000)
    Begin
        Insert into tblProducts values('Product - ' + Cast(@Id as nvarchar(20)), 'Product - ' + Cast(@Id as nvarchar(20)) + 'Description' )

        print @Id
        set @Id = @Id + 1;
    End

    -- See all the products 

    Select * from tblProducts;

```

```sql
-- Declare variables to hold a random ProductId, 
-- UnitPrice and QuantitySold
declare @RandomProductId int
declare @RandomUnitPrice int
declare @RandomQuantitySold int

-- Declare and set variables to generate a 
-- random ProductId between 1 and 100000
declare @UpperLimitForProductId int
declare @LowerLimitForProductId int

set @LowerLimitForProductId = 1
set @UpperLimitForProductId = 100000

-- Declare and set variables to generate a 
-- random UnitPrice between 1 and 100
declare @UpperLimitForUnitPrice int
declare @LowerLimitForUnitPrice int

set @LowerLimitForUnitPrice = 1
set @UpperLimitForUnitPrice = 100

-- Declare and set variables to generate a 
-- random QuantitySold between 1 and 10
declare @UpperLimitForQuantitySold int
declare @LowerLimitForQuantitySold int

set @LowerLimitForQuantitySold = 1
set @UpperLimitForQuantitySold = 10

--Insert Sample data into tblProductSales table
Declare @Counter int
Set @Counter = 1

While(@Counter <= 450000)
Begin
 select @RandomProductId = Round(((@UpperLimitForProductId - @LowerLimitForProductId) * Rand() + @LowerLimitForProductId), 0)
 select @RandomUnitPrice = Round(((@UpperLimitForUnitPrice - @LowerLimitForUnitPrice) * Rand() + @LowerLimitForUnitPrice), 0)
  select @RandomQuantitySold = Round(((@UpperLimitForQuantitySold - @LowerLimitForQuantitySold) * Rand() + @LowerLimitForQuantitySold), 0)
 
 Insert into tblProductSales 
 values(@RandomProductId, @RandomUnitPrice, @RandomQuantitySold)

 Print @Counter
 Set @Counter = @Counter + 1
End

```