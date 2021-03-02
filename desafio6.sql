SELECT CONCAT(
    tableEmployees.FIRST_NAME,
    " ",
    tableEmployees.LAST_NAME
  ) AS `Nome completo`,
  tableJobs.JOB_TITLE AS `Cargo`,
  tableHistory.START_DATE AS `Data de início do cargo`,
  tableDepartaments.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS tableHistory
  INNER JOIN hr.employees AS tableEmployees ON tableHistory.EMPLOYEE_ID = tableEmployees.EMPLOYEE_ID
  INNER JOIN hr.jobs AS tableJobs ON tableHistory.JOB_ID = tableJobs.JOB_ID
  INNER JOIN hr.departments AS tableDepartaments ON tableHistory.DEPARTMENT_ID = tableDepartaments.DEPARTMENT_ID
ORDER BY `Nome completo` DESC,
  `Cargo`;
