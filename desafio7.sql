
SELECT 
  UCASE(CONCAT(employees.first_name, ' ', employees.last_name)) AS "Nome completo",
  job_history.start_date AS "Data de início",
  employees.salary AS "Salário"
FROM employees
JOIN job_history
ON employees.employee_id = job_history.employee_id AND (employees.job_id <> job_history.job_id OR employees.job_id = job_history.job_id)
where MONTH(job_history.start_date) IN (1,2,3)
ORDER BY `Nome completo`, `Data de início`;
