SELECT 
  CONCAT(table1.FIRST_NAME, " ", table1.LAST_NAME) AS "Nome completo funcionário 1",
  table1.SALARY AS "Salário funcionário 1",
  table1.PHONE_NUMBER AS "Telefone funcionário 1",
  CONCAT(table2.FIRST_NAME, " ", table2.LAST_NAME) AS "Nome completo funcionário 2",
  table2.SALARY AS "Salário funcionário 2",
  table2.PHONE_NUMBER AS "Telefone funcionário 2"
FROM hr.employees AS table1, hr.employees AS table2
WHERE table1.JOB_ID = table2.JOB_ID AND table1.EMPLOYEE_ID <> table2.EMPLOYEE_ID
ORDER BY
  CONCAT(table1.FIRST_NAME, " ", table1.LAST_NAME) ASC,
  CONCAT(table2.FIRST_NAME, " ", table2.LAST_NAME) ASC;
