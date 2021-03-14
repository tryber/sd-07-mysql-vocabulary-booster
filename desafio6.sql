SELECT 
CONCAT(E.FIRST_NAME, ' ',  E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS Cargo,
H.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS Departamento
FROM hr.job_history as H
INNER JOIN hr.employees as E
ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs as J
ON H.JOB_ID = J.JOB_ID
INNER JOIN hr.departments as D
ON H.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY 1 DESC, Cargo;
