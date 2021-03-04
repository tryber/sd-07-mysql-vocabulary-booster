SELECT CONCAT(FIRST_NAME,' ', LAST_NAME) AS ' nome completo ',
JOB_TITLE AS 'Cargo', START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J ON J.JOB_ID = E.JOB_ID
INNER JOIN hr.job_history AS JS ON J.JOB_ID = JS.JOB_ID
INNER JOIN hr.departments AS D ON JS.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY 'nome completo' DESC, 'Cargo';
