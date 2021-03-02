SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
emp.HIRE_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS hist
INNER JOIN hr.employees AS emp
ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs
ON jobs.job_ID = hist.JOB_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = hist.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
