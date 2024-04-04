-- Weather Observation Station 11
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(LOWER(CITY,1)) NOT IN ('a', 'e', 'i', 'o', 'u')
OR RIGHT(LOWER(CITY,1)) NOT IN ('a', 'e', 'i', 'o', 'u');