-- Weather Observation Station 14

SELECT TRUNCATE(MAX(LAT_N), 4)
FROM Station
WHERE LAT_N < 137.2345;

-- You can use ROUND() also