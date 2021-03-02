SELECT
  CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
  DATE_FORMAT(jhist.START_DATE, '%d/%m/%Y') AS 'Data de início',
  DATE_FORMAT(jhist.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
  ROUND((DATEDIFF(jhist.END_DATE, jhist.START_DATE) / 365), 2) AS 'Anos trabalhados'
FROM
  hr.job_history AS jhist
INNER JOIN hr.employees AS emp
  ON jhist.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs as job
  ON jhist.JOB_ID = job.JOB_ID
ORDER BY
  'Nome completo',
  'Anos trabalhados';