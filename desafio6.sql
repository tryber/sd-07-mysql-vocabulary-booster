SELECT
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) 'Nome Completo',
jobs.JOB_TITLE 'Cargo',
j_history.START_DATE 'Data de início do cargo',
DEPARTMENT_NAME 'Departamento'
FROM hr.job_history j_history
LEFT JOIN hr.jobs jobs
ON j_history.JOB_ID = jobs.JOB_ID
LEFT JOIN hr.employees emp
ON j_history.EMPLOYEE_ID = emp.EMPLOYEE_ID
LEFT JOIN hr.departments dpt
ON j_history.DEPARTMENT_ID = dpt.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo` LIMIT 10;
