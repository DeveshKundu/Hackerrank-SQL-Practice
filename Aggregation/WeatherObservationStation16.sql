-- Weather Observation Station 16

SELECT ROUND(LAT_N, 4)
FROM Station
WHERE LAT_N > 38.7780
ORDER BY LAT_N
LIMIT 1;