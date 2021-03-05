SELECT 
CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
jobH.START_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jobH
INNER JOIN hr.employees AS employees ON jobH.EMPLOYEE_ID = employees.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs ON jobs.JOB_ID = jobH.JOB_ID
INNER JOIN hr.departments AS departments ON jobH.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, jobs.JOB_TITLE ASC;
