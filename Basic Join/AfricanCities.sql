-- African Cities

SELECT ct.Name
FROM City AS ct
JOIN Country AS c
ON ct.Countrycode = c.Code
WHERE Continent = "Africa";