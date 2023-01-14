# Write your MySQL query statement below
SELECT stock_name, 
sum(
CASE  
     WHEN operation = 'Sell' THEN price 
     ELSE -(price)
END
) as capital_gain_loss 
FROM Stocks
group by stock_name