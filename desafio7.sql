SELECT
  UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
  job_history.START_DATE AS 'Data de início',
  employees.SALARY AS 'Salário'
FROM
  job_history
  JOIN employees ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
  JOIN jobs ON jobs.JOB_ID = job_history.JOB_ID
WHERE
	MONTH(job_history.START_DATE) IN ('1', '2', '3')
ORDER BY
  `Nome completo`,
  `Data de início`;