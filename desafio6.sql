SELECT
  CONCAT(EMPLOYEES.FIRST_NAME, ' ', EMPLOYEES.LAST_NAME) AS 'Nome Completo',
  JOBS.JOB_TITLE AS 'Cargo',
  JOBHISTORY.START_DATE AS 'Data de início do cargo',
  DEPARTMENTS.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS EMPLOYEES
INNER JOIN hr.jobs AS JOBS
ON JOBS.JOB_ID = EMPLOYEES.JOB_ID
INNER JOIN hr.job_history AS JOBHISTORY
ON JOBHISTORY.EMPLOYEE_ID = EMPLOYEES.EMPLOYEE_ID
INNER JOIN hr.departments as DEPARTMENTS
ON DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID
ORDER BY 1 DESC, 2 ASC;
