# Write your MySQL query statement below
SELECT em.name as Employee  from Employee as em
join Employee as ma on ma.id = em.managerId 
where em.salary > ma.salary