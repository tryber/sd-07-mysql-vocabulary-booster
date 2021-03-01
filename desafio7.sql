SELECT
UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
h.start_date AS `Data de início`,
e.salary AS 'Salário'
FROM hr.job_history h
INNER JOIN hr.employees e ON e.employee_id = h.employee_id
WHERE MONTH(h.start_date) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
