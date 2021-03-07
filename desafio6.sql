SELECT CONCAT(hr.employees.FIRST_NAME, " ", hr.employees.LAST_NAME) AS "Nome completo",
hr.jobs.JOB_TITLE as "Cargo",
hr.employees.HIRE_DATE as "Data de início do cargo",
hr.departments.DEPARTMENT_NAME as "Departamento"
FROM hr.employees
INNER JOIN hr.jobs
ON hr.employees.JOB_ID = hr.jobs.JOB_ID
INNER JOIN hr.departments
ON hr.employees.DEPARTMENT_ID = hr.departments.DEPARTMENT_ID
order by CONCAT(hr.employees.FIRST_NAME, " ", hr.employees.LAST_NAME) desc, hr.jobs.JOB_TITLE;
