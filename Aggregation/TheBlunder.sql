-- The Blunder

SELECT CEIL(AVG(Salary) - AVG(CAST(REPLACE(Salary, '0', '') AS FLOAT)))
FROM Employees;