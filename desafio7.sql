SELECT UPPER(CONCAT(t1.first_name, ' ', t1.last_name)) AS `Nome Completo`, t2.start_date AS `Data de início`, t1.salary AS `Salário`
FROM employees as t1
INNER JOIN job_history as t2
ON t1.employee_id = t2.employee_id
WHERE month(t2.start_date) IN (1, 2, 3)
ORDER BY `Nome Completo`, `Data de início`;
