-- Problem : 178. Rank Score
-- Link : https://leetcode.com/problems/rank-scores/
-- Platform : LeetCode
-- Difficulty : Medium

SELECT 
    score,
    DENSE_RANK() OVER (ORDER BY score DESC) AS "rank"
FROM Scores

-- DENSE_RANK() for the no gap
