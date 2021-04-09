SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo funcionário 1',
e.SALARY AS 'Salário funcionário 1',
e.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(e1.FIRST_NAME, ' ', e1.LAST_NAME) AS 'Nome completo funcionário 2',
e1.SALARY AS 'Salário funcionário 2',
e1.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS e
INNER JOIN hr.employees AS e1 ON e.JOB_ID = e1.JOB_ID AND e.EMPLOYEE_ID <> e1.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;

/* feito com ajuda do código do @rafaelmguimaraes */
