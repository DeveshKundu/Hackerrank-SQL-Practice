-- Weather Observation Station 6

SELECT DISTINCT city
FROM station
WHERE LEFT(LOWER(city), 1) IN ('a', 'e', 'i', 'o', 'u');