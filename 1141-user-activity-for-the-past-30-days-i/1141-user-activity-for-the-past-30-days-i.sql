# Write your MySQL query statement below

SELECT activity_date AS day , count(DISTINCT user_id)  as active_users from Activity 
where activity_date <= '2019-07-27' AND activity_date >= '2019-06-28'
group by activity_date
