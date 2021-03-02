SELECT UPPER(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
jh.start_date AS 'Data de início',
e.salary AS 'Salário'
FROM job_history jh
INNER JOIN employees e
ON e.employee_id=jh.employee_id
WHERE MONTH(jh.start_date) IN (01, 02, 03)
ORDER BY CONCAT(e.first_name, ' ', e.last_name), jh.start_date;
