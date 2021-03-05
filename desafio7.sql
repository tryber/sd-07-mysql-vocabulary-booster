SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
job.START_DATE AS 'Data de início do cargo',
employees.SALARY AS 'Salário'
FROM hr.employees AS employees
INNER JOIN hr.job_history AS job ON job.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY `Nome completo`, HIRE_DATE;
