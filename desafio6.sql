SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
(SELECT JOB_TITLE
FROM hr.jobs
WHERE hr.jobs.JOB_ID = hr.employees.JOB_ID) AS Cargo,
CASE
WHEN (
SELECT START_DATE
FROM hr.job_history
WHERE hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID) THEN hr.job_history.START_DATE
ELSE HIRE_DATE
END AS `Data de início do cargo`,
(SELECT DEPARTMENT_NAME
FROM hr.departments
WHERE hr.departments.DEPARTMENT_ID = hr.employees.DEPARTMENT_ID) AS Departamento
FROM hr.employees
ORDER BY `Nome completo` DESC, Cargo;

SELECT * FROM hr.employees
WHERE FIRST_NAME = 'Jennifer';
SELECT * FROM hr.job_history;
SELECT * FROM hr.departments;
SELECT * FROM hr.jobs;
