-- Weather Observation Station 12
SELECT DISTINCT city
FROM station
WHERE LEFT(LOWER(city, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
AND RIGHT(LOWER(city,1)) NOT IN ('a', 'e', 'i', 'o', 'u');