SELECT 
CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
jobH.START_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS employees
INNER JOIN hr.job_history AS jobH ON jobH.EMPLOYEE_ID = employees.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs ON employees.JOB_ID = jobs.JOB_ID
INNER JOIN hr.departments AS departments ON hr.employees.DEPARTMENT_ID = hr.departments.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, jobs.JOB_TITLE ASC;
