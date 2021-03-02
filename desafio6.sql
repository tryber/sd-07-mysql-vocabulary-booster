SELECT CONCAT(A.FIRST_NAME ,' ', A.LAST_NAME)  AS 'Nome completo',
B.JOB_TITLE AS 'Cargo',
H.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS A
LEFT JOIN hr.jobs as B
ON A.JOB_ID = B.JOB_ID
RIGHT JOIN hr.job_history AS H
ON B.JOB_ID = H.JOB_ID
LEFT JOIN hr.departments AS D
ON D.DEPARTMENT_ID = H.DEPARTMENT_ID
ORDER BY CONCAT(A.FIRST_NAME ,' ', A.LAST_NAME), 1;