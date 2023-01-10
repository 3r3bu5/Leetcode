# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below


DELETE t1 FROM Person as t1
INNER JOIN Person as t2
where t1.id > t2.id AND t1.email = t2.email
