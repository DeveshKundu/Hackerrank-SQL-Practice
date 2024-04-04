-- Weather Observation Station 9
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(LOWER(CITY,1)) NOT IN ('a', 'e', 'i', 'o', 'u');