-- The Report

SELECT CASE
WHEN g.Grade > 7 THEN s.Name
ELSE "NULL"
END, 
g.Grade, s.Marks
FROM Students AS s
JOIN Grades AS g
ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY Grade DESC, Name, Marks;