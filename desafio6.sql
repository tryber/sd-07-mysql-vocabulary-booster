SELECT concat(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
jo.JOB_TITLE AS Cargo,
j.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees e
RIGHT JOIN hr.job_history j
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
LEFT JOIN hr.jobs jo
ON j.JOB_ID = jo.JOB_ID
LEFT JOIN hr.departments d
ON d.DEPARTMENT_ID = j.DEPARTMENT_ID
WHERE jo.JOB_TITLE is not null
ORDER BY concat(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, Cargo;
