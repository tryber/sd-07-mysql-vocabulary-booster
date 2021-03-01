SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome Completo',
jh.START_DATE AS 'Data de início',
e.SALARY AS Salário
FROM hr.employees AS e
INNER JOIN job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN(1, 2, 3)
ORDER BY `Nome Completo`, HIRE_DATE DESC;
