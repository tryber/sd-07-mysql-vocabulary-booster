SELECT CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME) AS "Nome completo",
jobs.JOB_TITLE AS "Cargo",
historyjob.START_DATE AS "Data de início do cargo",
departments.DEPARTMENT_NAME AS "Departamento"
FROM hr.job_history AS historyjob
INNER JOIN hr.employees AS employees
ON employees.EMPLOYEE_ID = historyjob.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = employees.JOB_ID
INNER JOIN hr.departments AS departments
ON departments.DEPARTMENT_ID = employees.DEPARTMENT_ID
ORDER BY 
  CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME),
  jobs.JOB_TITLE ASC
