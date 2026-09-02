-- Problem : 176. Second Highest Salary
-- Link : https://leetcode.com/problems/second-highest-salary/
-- Platform : LeetCode
-- Difficulty : Medium

SELECT (SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC -- Highest to lowest
LIMIT 1 OFFSET 1) AS SecondHighestSalary

-- Inner query finds the 2nd highest salary
-- OFFSET = SKIP ; OFFSET 1: Skip first row from the table
-- LIMIT = TAKE ; LIMIT 1: Pick the next one row
-- If 2nd highest salary doesn't exist or only one row in the table or only one type of salary in the table, then OUTER (SELECT...) converts it into NULL
