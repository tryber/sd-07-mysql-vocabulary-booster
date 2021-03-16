SELECT UCASE(CONCAT(he.FIRST_NAME,' ', he.LAST_NAME)) AS 'Nome Completo',
hjh.START_DATE AS 'Data de início', he.SALARY AS 'Departamento'
FROM hr.employees he
INNER JOIN hr.job_history hjh ON he.EMPLOYEE_ID = hjh.EMPLOYEE_ID
WHERE MONTH(hjh.START_DATE) BETWEEN 1 AND 3 
ORDER BY `Nome Completo`, `Data de início`;
