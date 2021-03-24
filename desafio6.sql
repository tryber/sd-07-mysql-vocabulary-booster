SELECT 
CONCAT(emps.FIRST_NAME, ' ', emps.LAST_NAME) AS `Nome completo`,
jobs.JOB_TITLE AS Cargo,
jh.START_DATE AS `Data de início do cargo`,
dps.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS emps
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = emps.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs
ON jh.JOB_ID = jobs.JOB_ID
INNER JOIN hr.departments as dps
ON jh.DEPARTMENT_ID = dps.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
