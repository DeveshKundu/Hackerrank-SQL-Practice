-- Weather Observation Station 5

-- shortest city name
SELECT city, LENGTH(city)
FROM station
ORDER BY LENGTH(city), city
LIMIT 1;

-- longest city name
SELECT city, LENGTH(city)
FROM station
ORDER BY LENGTH(city) DESC, city
LIMIT 1;