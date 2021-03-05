SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
job.START_DATE AS 'Data de início',
employees.SALARY AS 'Salário'
FROM hr.employees AS employees
INNER JOIN hr.job_history AS job ON job.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE MONTH(job.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Salário`;
