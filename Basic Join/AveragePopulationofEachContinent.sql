-- Average Population of Each Continent

SELECT c.Continent, FLOOR(AVG(ct.Population))
FROM City AS ct
JOIN Country AS c
ON ct.Countrycode = c.Code
GROUP BY Continent;