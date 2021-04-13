SELECT 
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS Cargo,
jh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM
hr.departments d,
hr.employees e,
hr.jobs j,
hr.job_history jh
WHERE
j.JOB_ID = e.JOB_ID
AND e.EMPLOYEE_ID = jh.EMPLOYEE_ID
AND jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC , Cargo;
