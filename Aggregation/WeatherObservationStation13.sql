-- Weather Observation Station 13

SELECT TRUNCATE(SUM(LAT_N), 4)
FROM Station
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

-- You can use ROUND() also