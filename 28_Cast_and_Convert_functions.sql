
-- ***************** Cast and Convert functions ****************

/* 
    To convert one data type to another, CAST and CONVERT function can be used

*/

-- Syntax of CAST and CONVERT functions from MSDN

=> CAST (expression As data_type [(length)]);

=> CONVERT( data_type [(length)], expression[, style]);

-- anything inside the [] that is optional

-- supposed to convert  date to formating way 

-- 1  sum    1980-12-30 00:00:00.000     to  1  sam  Dec 30 1980 12:00 AM

=> Select Id, Name, DateOfBirth CAST(DateofBirth as nvarchar(200)) as ConvertedDOB from tblEmployee;

=> Select Id, Name, DateOfBirth Convert(nvarchar, DateOfBirth) as ConvertedDOB from tblEmployee;


-- We have code to fomrat date by stle 
/* 
    style     DateFormat
    101       mm/dd/yyyy
    102       yy.mm.dd
    103       dd/mm/yyyy
    104       dd.mm.yy
    105       dd-mm-yy
*/
=> select Id, Name, DateOfBirth
    Convert(nvarchar, DateOfBirth, 103) as ConvertedDOB
    from tblEmployee;


-- Int to convert into nvarchar

=> Select Id, Name, Name + ' - ' + CAST(Id, nvarchar) from tblEmployee;



-- ***************** Practical Example *********************

-- find how may people regesiter on same date 

=> Select Cast(RegisteredDate as Date) as RegistrationDate, count(Id) as TotalReg
    from tblEmployeee
    Group By Cast(RegisteredDate as Date);

-- we have to convert Date time to Date becase for counting perpouse Time maybe different 

