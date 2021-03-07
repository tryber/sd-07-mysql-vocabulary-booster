SELECT
UCASE(CONCAT(hr.employees.FIRST_NAME, ' ', hr.employees.LAST_NAME)) AS 'Nome completo',
hr.job_history.START_DATE AS 'Data de início',
hr.employees.SALARY AS 'Salário'
FROM hr.employees
INNER JOIN hr.job_history
ON hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
WHERE MONTH(hr.job_history.START_DATE) BETWEEN 1 AND 3
ORDER BY 1, 2; 