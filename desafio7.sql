SELECT 
UCASE(CONCAT(employees.FIRST_NAME , ' ', employees.LAST_NAME)) as 'Nome completo',
JOBS.JOB_TITLE AS Cargo,
employees.HIRE_DATE AS 'Data de início',
employees.SALARY AS 'Salário',
Month(employees.HIRE_DATE)
from hr.employees as employees 
 
INNER JOIN hr.jobs AS JOBS 
on JOBS.JOB_ID = employees.JOB_ID
INNER JOIN hr.departments as departments
on employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
where MONTH(employees.HIRE_DATE) in (1, 2, 3)
ORDER BY CONCAT(employees.FIRST_NAME , ' ', employees.LAST_NAME), JOBS.JOB_TITLE ;
