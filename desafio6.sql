SELECT 
CONCAT (e.FIRST_NAME, " ", e.LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS Cargo,
h.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
INNER JOIN hr.departments AS d
INNER JOIN hr.job_history AS h
ON e.JOB_ID = j.JOB_ID AND e.DEPARTMENT_ID = d.DEPARTMENT_ID AND e.JOB_ID = h.JOB_ID
ORDER BY `Nome completo` DESC, Cargo; 
