
-- ************** Mathematical functions in sql server ****************

/* 
    Mathematical functions 
    1) Abs        
    2) Ceilling
    3) Floor
    4) Power
    5) Rand
    6) Square
    7) Sqrt
    8) Round

*/

=> Select Abs(-101.5);   -- out: 101.5  positive number without - sign

=> Select Ceiling(15.2) -- output: 16
=> Select Ceiling(-15.2) -- output: -15

=> Select Floor(15.2)  -- output: 15
=> Select Floor(-15.2)  -- output: -16

=> Select Power(2,3)  -- output: 2^3 => 8

=> Select Square(9)  -- output: 81 

=> Select Sqrt(81)   -- output: 9

=> Select Rand(1)  -- random function return a random float number between 0 and 1
                   
                   -- output: 0.702982929 always return same value for same seed => Rand(Seed_value)
                   
                   -- output without => seed it generate random value => Rand() only 

-- Generate a random number between 1 and 100
=> Select Floor(Rand() * 100);

-- Prints 10 random numbers between 1 and 100
=> Declare @Counter Int
   Set @Counter = 1

   While(@Counter <= 10)
   Begin
    print Floor(Rand() * 100);  -- if told 1 to 1000 repace 100 by that
    Set @Counter = @Counter + 1
   End


-- *************** Round function understand clearly **************
-- Round(numeric_expression, length[, function])
-- function optional parameter default is Zero 


-- Round to 2 placess after (to the right) the decimal point
=> Select Round(850.556, 2) -- returns 850.560

-- Rruncate anything after 2 placess, after (to the right) the decimal point 
=> Select Round(850.566, 2, 1)  -- Returns 850.550

-- Round to 1 place after (to the right) the decimal piont
=> Select Round(850.556, 1)  -- Returns 850.600

-- Rruncate anything after 1 place, after (to the right) the decimal point
=> Select Round(850.556, 1, 1)  -- Returns 850.500

-- Round the last 2 placess before (to the left) the decimal piont 
=> Select Round(850.556, -2) -- 900.000

-- Round the last 1 place before (to the left) the decimal point 
=> Select Round(850.556, -1) -- 850.000

