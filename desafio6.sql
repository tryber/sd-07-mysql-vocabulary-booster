SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
h.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history h, hr.employees e, hr.departments d, hr.jobs j

WHERE e.EMPLOYEE_ID = h.EMPLOYEE_ID
AND e.DEPARTMENT_ID = d.DEPARTMENT_ID
AND h.JOB_ID = j.JOB_ID
AND j.JOB_TITLE IS NOT NULL

ORDER BY `Nome completo` DESC, Cargo;
