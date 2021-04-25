SELECT UCASE(CONCAT(FIRST_NAME, " ", LAST_NAME)) AS 'Nome completo',
  START_DATE AS 'Data de início',
  SALARY AS 'Salário'
FROM hr.job_history AS j_h
  JOIN hr.employees AS e ON j_h.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE MONTH(START_DATE) BETWEEN 1 and 3
ORDER BY `Nome completo`,
  `Data de início`;
