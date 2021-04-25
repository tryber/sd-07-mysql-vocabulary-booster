SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo funcionário 1',
e.SALARY AS 'Salário funcionário 1', e.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(z.FIRST_NAME, ' ', z.LAST_NAME) AS 'Nome completo funcionário 2',
z.SALARY AS 'Salário funcionário 2', z.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS e, hr.employees AS z
WHERE (CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) <> CONCAT(z.FIRST_NAME, ' ', z.LAST_NAME))
AND e.JOB_ID = z.JOB_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME), CONCAT(z.FIRST_NAME, ' ', z.LAST_NAME);
