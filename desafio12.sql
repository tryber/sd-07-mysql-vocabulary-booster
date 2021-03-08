SELECT Concat(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo funcionário 1',
employees.SALARY AS 'Salário funcionário 1',
employees.PHONE_NUMBER AS 'Telefone funcionário 1',
Concat(employees2.FIRST_NAME, ' ', employees2.LAST_NAME) AS 'Nome completo funcionário 2',
employees2.SALARY AS 'Salário funcionário 2',
employees2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS employees
INNER JOIN hr.employees AS employees2
ON employees.JOB_ID = employees2.JOB_ID
WHERE 'Nome completo funcionário 1' <> 'Nome completo funcionário 2'
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
