-- Weather Observation Station 19

-- Euclidean distance
-- let point p be (p1, p2) and point q be (q1, q2). Then distance is:
-- d(p, q) = sqrt((p1 - q1)^2 + (p2 - q2)^2)

SELECT 
ROUND(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N), 2) + POWER(MAX(LONG_W) - MIN(LONG_W), 2)), 4)
FROM Station;