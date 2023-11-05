

-- ******************* DateTime functions in SQL Server ********************

/*
    * DateTime data types
    * DateTime function 
    * Understand UTC time and Time  Zone offset


    Data type                Format   
    time                     hh:mm:ss [nnnnnnnnnn]
    date                     YYYY:MM:DD 
    smalldatetime            YYYY-MM-DD  hh:mm:ss
    datetime                 YYYY-MM-DD hh:mm:ss[nnn]
    datetime2                YYYY-MM-DD hh:mm:ss[nnn]
    datetimeoffset           YYYY-MM-DD hh:mm:ss[nnnnnn] +- hh:mm

*/

/* 

    Function                   Date Time Format                     Description
    
    GETDATE()                 2012-08-31 20:15:04.543              Commonly used

    CURRENT_TIMESTAMP()      2012-08-31  20:15:04.543              ANSI SQL equlvalent to GETDATE

    SYSDATETIME()            2012-06-31  20:15:04.5480028          More fractional secods percision

    SYSDATETIMEOFFSET()     2012-08-31  20:15:04.538008 + 01:00    More fractional seconds pecision + Time zone offset

    GETUTCDATE()            2012-08-31 19:15:04.543                UTC Date and Time

    SYSUTCDATETIME()        2012-08-31 19:15:04.54380028           UTC Date and Time with More fractional seconds precision
    

*/