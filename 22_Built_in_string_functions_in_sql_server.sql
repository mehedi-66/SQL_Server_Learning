
-- ********************** Built in string functions in sql server *********************

/* 
    String function

    1) ASCII(Character Expression)  => Returns the ASCII code of the given chareacter expression

    2) CHARE(Integer Expression) => Converts an int ASCII code to a character. The Integer Expression should be
                                    beteween 0 and 255
    3) LTRIM(Character Expression) => Removes blanks on the left handside of the given character expression

    4) RTRIM(Character Expression) => Removes blanks on the right hand side of the given character expression

    5) LOWER(Character Expression) => Converts all the character inh te given character expression to lowercase letters

    6) UPPER(Character Expression) => Converts all the characters in the given character expression to uppercase letter

    7) REVERSE('Any string expression') => Reverse all the characters in the given string expression

    8) LEN(String Expression) => Returns the count of total characters in the given string expression excluding hte 
                                 black at the end of the expresssion
    
*/
  -- ASCII character value 
=> Select ASCII('A');   -- 65

=> Select ASCII('ABC');   -- it return first caracter ascii value 65


-- CHAR(integer_Expression) it return the character of that vaue
=> Select CHAR(65)   -- A

-- Lets say we want to print  A - Z

=> Declare @Start int 
   Set @Start = 65
   
   While(@Start <= 90)
    Begin
        Print Char(@Start);
        Set @Start = @Start + 1;
    END



-- LTrim(Character_Expression)  -> Remove blanks on the left handside of the given character expression

=> Select LTRIM('    Mehedi');   -- Meheid  remove left space

-- RTrim(Character_Expression) -> Remove blanks on the right hand

=> Select RTRIM('Mehedi      ');

=> Select    RTRIM(LTRIM('     Mehedi     '));


-- UPPER(Character_Expression) ->  make upper case carater 
-- Lower(Character_Expression) -> make lower case carater


=> Select UPPER(FirstName), Lower(LastName) form tblEmployee;


-- Reverse(Character_Expression)  --> Reverse the string 

=> Select Reverse(UPPER(FirstName)), Lower(LastName) form tblEmployee;


-- LEN(Character_Expression) --> give the length of string

=> Select LEN(FirstName), LEN(LastName) form tblEmployee;

