SELECT 
CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) AS "Nome completo",
j.JOB_TITLE AS Cargo,
jh.START_DATE AS "Data de início do cargo",
d.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS e
INNER JOIN departments AS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN job_history AS jh
ON jh.JOB_ID = e.JOB_ID
INNER JOIN jobs AS j
ON j.JOB_ID = e.JOB_ID
ORDER BY 1 DESC, 2;
