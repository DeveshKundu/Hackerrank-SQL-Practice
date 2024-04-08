-- Top Earners

SELECT MAX(Months * Salary), COUNT(*)
FROM Employee
WHERE Months * Salary = (
    SELECT MAX(Months * Salary)
    FROM Employee
);

/*
Firstly
SELECT MAX(Months * Salary)
FROM Employee
=> 108064

Secondly
SELECT MAX(Months * Salary), COUNT(*)
FROM Employee
WHERE Months * Salary = 108064;
=> 108064 7 (first prints 7 times then count them)
*/