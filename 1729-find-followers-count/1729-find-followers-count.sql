# Write your MySQL query statement below
SELECT DISTINCT user_id , count(follower_id) OVER(PARTITION BY user_id) as followers_count  from Followers