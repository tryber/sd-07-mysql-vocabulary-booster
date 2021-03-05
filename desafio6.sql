SELECT CONCAT(t1.first_name, ' ', t1.last_name) AS `Nome Completo`, t2.job_title AS `Cargo`, t1.hire_date AS `Data de início do cargo`, t3.department_name AS `Departamento`
FROM employees as t1
INNER JOIN jobs as t2
INNER JOIN departments as t3
ON t1.job_id = t2.job_id AND t1.department_id = t3.department_id
ORDER BY `Nome Completo`, `Cargo`;
