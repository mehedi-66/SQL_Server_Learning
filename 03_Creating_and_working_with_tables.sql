
-- ******************* Creating and working with tables *******************

/* 
   The aim of this to create tblPerson and tblGender tables and establish perimary key and foreign key 
   constraints. (Relation no to violating relation or constrain)
    
*/

=> Use Sample3
    go
    create table tblPerson
    (
        Id int not null primary key,
        Name varchar(50) not null,
        GenderId int not null
    )

=> Use Sample3
    go

    Create Table tblGender 
    (
        Id int Not Null primary Key,
        Gender nvarchar(50) Not Null
    )


-- We want to mark GenderId colum as foregin key into tblPerson table

/* 
    tblGener
    Id    Gender 
    -------------
    1    Male
    2    Female

    tblPerson
    Id    Name    GenderId
    ---------------------
    1    Mehedi     1
    2    Suchana    2
    3    Hasan      99

    here 99 data constrain is lost database acepted  99 but it shouldn't 

    we can solve this problem by referential intregety constains 
*/

-- General way to make foreing key Relationship

# => Alter ForeginKeyTable ad constraint ForeignKeyTable_ForiegnKeyColumn_FK
     Foreign Key (ForiegnKeyColumn) references PrimaryKeyTable (PrimaryKeyColumn) ;


=>  Alter table tblPerson  add constraint tblPerson_GenderId_FK
foreign Key (GenderId) references tblGender (Id) ;