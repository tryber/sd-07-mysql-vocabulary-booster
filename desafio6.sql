SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
history.START_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS history
INNER JOIN hr.employees AS employees
ON history.EMPLOYEE_ID = employees.EMPLOYEE_ID 
JOIN hr.jobs AS jobs
ON jobs.JOB_ID = history.JOB_ID
JOIN hr.departments AS departments
ON departments.DEPARTMENT_ID = history.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, 'Cargo';
