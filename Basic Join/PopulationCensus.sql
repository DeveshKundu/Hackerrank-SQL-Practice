-- Population Census

SELECT SUM(ct.Population)
FROM City ct LEFT JOIN Country c
ON ct.Countrycode = c.Code
WHERE c.Continent = "ASIA";