SELECT CONCAT(t1.first_name, ' ', t1.last_name) AS `Nome completo`, t2.job_title AS `Cargo`, t4.start_date AS `Data de início do cargo`, t3.department_name AS `Departamento`
FROM employees as t1
INNER JOIN jobs as t2
ON t1.job_id = t2.job_id
INNER JOIN departments as t3
ON t1.department_id = t3.department_id
INNER JOIN job_history as t4 
ON t1.employee_id = t4.employee_id
GROUP BY t1.employee_id
ORDER BY `Nome completo` DESC, `Cargo`;
