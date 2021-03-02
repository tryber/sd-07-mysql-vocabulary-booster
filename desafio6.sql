SELECT 
  CONCAT(FIRST_NAME,' ',LAST_NAME) AS 'Nome completo',
  JOB_TITLE AS Cargo,
  START_DATE AS 'Data de início do cargo',
  DEPARTMENT_NAME AS Departamento
FROM 
  hr.employees
INNER JOIN
  hr.departments
ON
  hr.employees.DEPARTMENT_ID = hr.departments.DEPARTMENT_ID
INNER JOIN
  hr.job_history
ON
  hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
INNER JOIN
  hr.jobs
ON
  hr.employees.JOB_ID = hr.jobs.JOB_ID
ORDER BY
  CONCAT(FIRST_NAME,' ',LAST_NAME) DESC, JOB_TITLE ASC ;
