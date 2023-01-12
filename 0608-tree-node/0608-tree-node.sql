# Write your MySQL query statement below
SELECT id, 
CASE
WHEN p_id is null then 'Root'
WHEN id in (select p_id from Tree) then 'Inner'
ELSE 'Leaf'
END as type
from Tree
