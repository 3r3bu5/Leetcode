# Write your MySQL query statement below
(SELECT Employees.employee_id  FROM Employees
left join Salaries on Salaries.employee_id = Employees.employee_id
where name is null or salary is null
)
union all
(SELECT Salaries.employee_id FROM Employees
right join Salaries on Salaries.employee_id = Employees.employee_id
where name is null or salary is null
)
order by employee_id 