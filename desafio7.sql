SELECT UCASE(concat(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
h.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.employees e
RIGHT JOIN hr.job_history h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
LEFT JOIN hr.jobs jo
ON h.JOB_ID = jo.JOB_ID
WHERE MONTH(h.START_DATE) in ('01', '02', '03')
ORDER BY concat(e.FIRST_NAME, ' ', e.LAST_NAME), h.START_DATE;
