SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
hist.START_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS hist
INNER JOIN hr.employees AS employees
ON hist.EMPLOYEE_ID = employees.EMPLOYEE_ID 
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = hist.JOB_ID
INNER JOIN hr.departments AS departments
ON departments.DEPARTMENT_ID = hist.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
