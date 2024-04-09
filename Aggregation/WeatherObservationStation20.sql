-- Weather Observation Station 20

SELECT ROUND(LAT_N, 4)
FROM (
    SELECT ROW_NUMBER() OVER (ORDER BY LAT_N) AS RNK, LAT_N
    FROM Station
) AS subquery
WHERE RNK = (
    SELECT ROUND(COUNT(*) / 2)
    FROM Station
);

/*
This line will assign rank to each row in ASC of LAT_N
ROW_NUMBER() OVER (ORDER BY LAT_N) AS RNK

subquery is just a table name

Since we want median so it's value will be half.
so ROUND(COUNT(*) / 2)
ROUND() function to convert in integer
*/