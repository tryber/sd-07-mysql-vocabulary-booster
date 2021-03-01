SELECT 
UCASE(CONCAT(employees.FIRST_NAME , ' ', employees.LAST_NAME)) AS 'Nome completo',
JOBS.JOB_TITLE AS Cargo,
employees.HIRE_DATE AS 'Data de início',
employees.SALARY AS 'Salário',
Month(employees.HIRE_DATE)
FROM hr.employees AS employees 

INNER JOIN hr.jobs AS JOBS 
ON JOBS.JOB_ID = employees.JOB_ID
INNER JOIN hr.departments AS departments
ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
WHERE MONTH(employees.HIRE_DATE) IN (1, 2, 3)
ORDER BY CONCAT(employees.FIRST_NAME , ' ', employees.LAST_NAME), JOBS.JOB_TITLE ;
