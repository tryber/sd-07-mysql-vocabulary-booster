SELECT UPPER(
    CONCAT(
      tableEmployees.FIRST_NAME,
      " ",
      tableEmployees.LAST_NAME
    )
  ) AS `Nome completo`,
  tableHistory.START_DATE AS `Data de início`,
  tableEmployees.SALARY AS `Salário`
FROM hr.job_history AS tableHistory
  INNER JOIN hr.employees AS tableEmployees ON tableHistory.EMPLOYEE_ID = tableEmployees.EMPLOYEE_ID
  INNER JOIN hr.jobs AS tableJobs ON tableHistory.JOB_ID = tableJobs.JOB_ID
WHERE MONTH(tableHistory.START_DATE) = 1
  OR MONTH(tableHistory.START_DATE) = 2
  OR MONTH(tableHistory.START_DATE) = 3
ORDER BY `Nome completo` ASC,
  `Data de início` ASC;
