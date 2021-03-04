SELECT UCASE(CONCAT(FIRST_NAME,' ', LAST_NAME)) AS ' nome completo ',
START_DATE AS 'Data de início do cargo', SALARY AS 'Salário'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J ON J.JOB_ID = E.JOB_ID
INNER JOIN hr.job_history AS JS ON J.JOB_ID = JS.JOB_ID
WHERE MONTH(START_DATE) IN (01, 02, 03)
ORDER BY 'nome completo', MONTH(START_DATE);
