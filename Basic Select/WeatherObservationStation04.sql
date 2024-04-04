-- Weather Observation Station 4
SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station;