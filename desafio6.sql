SELECT CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) AS 'Nome completo',
t3.JOB_TITLE AS 'Cargo',
t1.START_DATE AS 'Data de início do cargo',
t4.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS t1
INNER JOIN hr.employees AS t2
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
INNER JOIN hr.jobs AS t3
ON t1.JOB_ID = t3.JOB_ID
INNER JOIN hr.departments AS t4
ON t1.DEPARTMENT_ID = t4.DEPARTMENT_ID
ORDER BY 1 DESC, 2;
