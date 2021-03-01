SELECT CONCAT(employe.FIRST_NAME,' ',employe.LAST_NAME) AS "Nome completo",
job.JOB_TITLE AS Cargo,
history_job.START_DATE AS "Data de início do cargo",
department.DEPARTMENT_NAME AS "Departamento"
FROM hr.employees AS employe
INNER JOIN hr.job_history AS history_job
ON history_job.EMPLOYEE_ID = employe.EMPLOYEE_ID
LEFT JOIN hr.jobs AS job
ON job.JOB_ID = history_job.JOB_ID
LEFT JOIN hr.departments AS department
ON department.DEPARTMENT_ID = employe.DEPARTMENT_ID
GROUP BY employe.EMPLOYEE_ID
ORDER BY `Nome completo` DESC,Cargo;
