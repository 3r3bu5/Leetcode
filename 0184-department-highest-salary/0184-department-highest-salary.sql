# Write your MySQL query statement below

WITH sales_numbered AS (
SELECT Department.name as Department , Employee.name as Employee, Salary,
max(Salary) over(partition by Department.id) AS max_salary
FROM Employee
join Department on Department.id = Employee.departmentId
)

SELECT Department,Employee,Salary from sales_numbered where Salary = max_salary