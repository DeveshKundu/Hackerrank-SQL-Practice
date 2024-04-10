-- Top Competitors

-- hacker_id name of hacker
-- full score for more than one challenge
-- order by no of challenges, hacker_id

SELECT h.Hacker_id, h.Name
FROM Hackers AS h
JOIN Submissions AS s USING(Hacker_id)
JOIN Challenges AS c USING(Challenge_id)
JOIN Difficulty AS d USING(Difficulty_level)
WHERE s.Score = d.score AND c.Difficulty_level = d.Difficulty_level
GROUP BY h.Hacker_id, h.Name
HAVING COUNT(s.Submission_id) > 1
ORDER BY COUNT(s.Submission_id) DESC, s.Hacker_id;

-- SELECT h.Hacker_id, h.Name
-- FROM Hackers AS h
-- JOIN Submissions AS s ON h.Hacker_id = s.Hacker_id
-- JOIN Challenges AS c ON s.Challenge_id = c.Challenge_id
-- JOIN Difficulty AS d ON c.Difficulty_level = d.Difficulty_level
-- WHERE s.Score = d.score AND c.Difficulty_level = d.Difficulty_level
-- GROUP BY h.Hacker_id, h.Name
-- HAVING COUNT(s.Submission_id) > 1
-- ORDER BY COUNT(s.Submission_id) DESC, s.Hacker_id;