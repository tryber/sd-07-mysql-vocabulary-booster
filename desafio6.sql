SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
job_hist.START_DATE AS 'Data de início do cargo',
departm.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS emp
INNER JOIN hr.job_history as job_hist ON job_hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs as jobs ON jobs.JOB_ID = emp.JOB_ID
INNER JOIN hr.departments as departm ON departm.DEPARTMENT_ID = emp.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
