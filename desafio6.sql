SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME ) AS 'Nome completo', 
jobs.JOB_TITLE AS Cargo,
employees.HIRE_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs ON jobs.JOB_ID = employees.JOB_ID
INNER JOIN hr.departments AS departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME ) DESC, JOB_TITLE;
