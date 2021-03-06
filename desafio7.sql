SELECT UCASE(CONCAT(emp.first_name, ' ', emp.last_name)) AS 'Nome completo',
jh.start_date AS 'Data de início',
emp.salary AS 'Salário'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jh ON emp.employee_id = jh.employee_id
WHERE MONTH(jh.start_date) In (01, 02, 03)
ORDER BY `Nome completo`, `Data de início`;
