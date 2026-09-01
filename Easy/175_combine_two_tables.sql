-- Problem: 175. Combine Two Tables
-- Platform: LeetCode
-- Link: https://leetcode.com/problems/combine-two-tables/
-- Difficulty: Easy

SELECT Person.firstName, Person.lastName, Address.city, Address.state
FROM Person
LEFT JOIN Address
ON Person.personId = Address.personId
