-- Occupations

set @d = 0, @p = 0, @s = 0, @a = 0;
SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor)
FROM (
    SELECT CASE
    WHEN occupation = "Doctor" THEN (@d = @d + 1)
    WHEN occupation = "Professor" THEN (@p = @p + 1)
    WHEN occupation = "Singer" THEN (@s = @s + 1)
    WHEN occupation = "Actor" THEN (@a = @a + 1)
    END AS counts,
    CASE WHEN occupation = "Doctor" THEN name END AS Doctor,
    CASE WHEN occupation = "Professor" THEN name END AS Professor,
    CASE WHEN occupation = "Singer" THEN name END AS Singer,
    CASE WHEN occupation = "Actor" THEN name END AS Actor
    FROM occupations
    ORDER BY name
) AS Elements
GROUP BY counts;