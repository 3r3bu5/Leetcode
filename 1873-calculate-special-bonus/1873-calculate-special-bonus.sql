# Write your MySQL query statement below
SELECT employee_id , COALESCE(
CASE WHEN LEFT(name,1)!= 'M' AND employee_id % 2 != 0 THEN salary END, 0) as bonus  from Employees 
 order by employee_id