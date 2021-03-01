SELECT
UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
jh.start_date AS 'Data de início',
e.salary AS 'Salário'
FROM hr.job_history jh
JOIN hr.employees e
ON jh.employee_id = e.employee_id
WHERE MONTH(start_date) IN (1, 2, 3)
ORDER BY `Nome completo`, hire_date;
