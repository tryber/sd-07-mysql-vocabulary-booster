SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
job.JOB_TITLE AS 'Cargo',
START_DATE AS 'Data de início do cargo',
dept.DEPARTMENT_NAME 'Departamento'
FROM hr.job_history job_h
INNER JOIN hr.employees emp 
ON emp.EMPLOYEE_ID = job_h.EMPLOYEE_ID
LEFT JOIN hr.jobs job
ON job.JOB_ID = job_h.JOB_ID
LEFT JOIN hr.departments dept
ON dept.DEPARTMENT_ID = job_h.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Data de início do Cargo`;
