-- Ollivander's Inventory

SELECT w.ID, p.Age, w.Coins_needed, w.Power
FROM Wands AS w
JOIN Wands_Property AS p USING(Code)
WHERE p.Is_evil = 0 AND w.Coins_needed = (
    SELECT MIN(Coins_needed)
    FROM Wands AS w2
    JOIN Wands_Property AS p2 USING(Code)
    WHERE w.Power = w2.Power AND p.Age = p2.Age
)
ORDER BY w.Power DESC, p.Age DESC;