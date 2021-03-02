SELECT
  UCASE(CONCAT(employeer.FIRST_NAME, ' ', employeer.LAST_NAME)) AS `Nome completo`,
  jd.START_DATE AS `Data de início`,
  employeer.SALARY AS `Salário`
FROM hr.employees AS employeer
INNER JOIN hr.job_history AS jd
  ON employeer.EMPLOYEE_ID = jd.EMPLOYEE_ID
WHERE MONTH(jd.START_DATE) IN (1, 2, 3)
ORDER BY
  `Nome completo` ASC,
  `Data de início` ASC;
