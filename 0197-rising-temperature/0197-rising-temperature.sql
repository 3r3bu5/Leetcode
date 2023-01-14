# Write your MySQL query statement below
SELECT w.id from Weather as w
join Weather as t on date_sub(w.recordDate ,interval 1 day) = t.recordDate 
where w.temperature > t.temperature AND t.temperature is not null