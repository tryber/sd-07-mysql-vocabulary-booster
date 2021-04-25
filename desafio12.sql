SELECT CONCAT(e_1.FIRST_NAME, ' ', e_1.LAST_NAME) AS 'Nome completo funcionário 1',
  e_1.SALARY AS 'Salário funcionário 1',
  e_1.PHONE_NUMBER AS 'Telefone funcionário 1',
  CONCAT(e_2.FIRST_NAME, ' ', e_2.LAST_NAME) AS 'Nome completo funcionário 2',
  e_2.SALARY AS 'Salário funcionário 2',
  e_2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS e_1
  JOIN hr.employees AS e_2 ON e_1.JOB_ID = e_2.JOB_ID
WHERE CONCAT(e_1.FIRST_NAME, ' ', e_1.LAST_NAME) <> CONCAT(e_2.FIRST_NAME, ' ', e_2.LAST_NAME)
ORDER BY `Nome completo funcionário 1`,
  `Nome completo funcionário 2`;
