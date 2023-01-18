# Write your MySQL query statement below
SELECT DISTINCT Product.product_id ,  product_name from Product
join Sales on Sales.product_id = Product.product_id
where (sale_date  between '2019-01-01' AND '2019-03-31' ) AND Sales.product_id NOT IN (
    SELECT Sales.product_id  FROM Sales where (sale_date NOT between '2019-01-01' AND '2019-03-31' )
)
