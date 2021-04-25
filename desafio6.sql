SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
jobhist.START_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jobhist
INNER JOIN hr.employees AS employees
ON jobhist.EMPLOYEE_ID = employees.EMPLOYEE_ID 
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = jobhist.JOB_ID
INNER JOIN hr.departments AS departments
ON departments.DEPARTMENT_ID = jobhist.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
