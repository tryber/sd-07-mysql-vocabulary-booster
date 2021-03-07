SELECT CONCAT(hr.employees.FIRST_NAME, " ", hr.employees.LAST_NAME) AS "Nome completo",
hr.jobs.JOB_TITLE as "Cargo",
hr.job_history.START_DATE as "Data de início do cargo",
hr.departments.DEPARTMENT_NAME as "Departamento"
FROM hr.employees
INNER JOIN hr.job_history
ON hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
INNER JOIN hr.departments
ON hr.job_history.DEPARTMENT_ID = hr.departments.DEPARTMENT_ID
inner join hr.jobs
on hr.jobs.JOB_ID = hr.job_history.JOB_ID
order by 1 desc, 2;
