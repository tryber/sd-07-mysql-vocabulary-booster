SELECT CONCAT(empl.FIRST_NAME," ",empl.LAST_NAME) AS "Nome completo",
job.JOB_TITLE AS "Cargo",
jobH.START_DATE AS "Data de início do cargo",
dep.DEPARTMENT_NAME AS "Departamento"
FROM hr.employees AS empl
INNER JOIN hr.job_history AS jobH
ON empl.EMPLOYEE_ID = jobH.EMPLOYEE_ID
INNER JOIN hr.jobs AS job
ON jobH.JOB_ID = job.JOB_ID
INNER JOIN hr.departments AS dep
ON jobH.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, job.JOB_TITLE;
