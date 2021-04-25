SELECT
  CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) AS 'Nome completo funcionário 1',
  EMP.SALARY AS 'Salário funcionário 1',
  EMP.PHONE_NUMBER AS 'Telefone funcionário 1',
  CONCAT(EMP1.FIRST_NAME, ' ', EMP1.LAST_NAME) AS 'Nome completo funcionário 2',
  EMP1.SALARY AS 'Salário funcionário 2',
  EMP1.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
  hr.employees AS EMP,
  hr.employees AS EMP1
WHERE
  EMP.JOB_ID = EMP1.JOB_ID 
AND
  EMP.EMPLOYEE_ID <> EMP1.EMPLOYEE_ID 
ORDER BY
  CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) ASC, 
  CONCAT(EMP1.FIRST_NAME, ' ', EMP1.LAST_NAME) ASC;
