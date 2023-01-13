# Write your MySQL query statement below
select customer_id , count(customer_id ) as count_no_trans  from Visits 
left join Transactions on Transactions.visit_id  = visits.visit_id 
where amount is null
group by customer_id 