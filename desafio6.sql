SELECT 
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
jobs.JOB_TITLE AS Cargo,
emps.HIRE_DATE AS `Data de início do cargo`,
dps.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS emps
INNER JOIN hr.jobs AS jobs
ON emps.JOB_ID = jobs.JOB_ID
INNER JOIN hr.departments as dps
ON emps.DEPARTMENT_ID = dps.DEPARTMENT_ID
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = emps.EMPLOYEE_ID
ORDER BY `Nome completo` DESC, Departamento;
