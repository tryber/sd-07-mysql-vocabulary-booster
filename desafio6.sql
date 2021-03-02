SELECT CONCAT(employeer.FIRST_NAME, ' ', employeer.LAST_NAME) AS 'Nome completo',
job.JOB_TITLE as 'Cargo',
jd.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history as jd
INNER JOIN hr.jobs AS job ON job.JOB_ID = jd.JOB_ID
INNER JOIN hr.employees AS employeer ON employeer.EMPLOYEE_ID = jd.EMPLOYEE_ID
INNER JOIN hr.departments AS d ON d.DEPARTMENT_ID = jd.DEPARTMENT_ID
ORDER BY CONCAT(employeer.FIRST_NAME, ' ', employeer.LAST_NAME) DESC, job.JOB_TITLE ASC;
