# Write your MySQL query statement below
SELECT name as NAME , sum(amount) as BALANCE  from Transactions
join Users on Users.account  = Transactions.account
group by Transactions.account 
having sum(amount) > 10000