# Write your MySQL query statement below
SELECT user_id as buyer_id, join_date , count(order_id) as orders_in_2019 
From Users
left join Orders on Users.user_id = Orders.buyer_id AND YEAR(order_date) = '2019'
group by user_id
