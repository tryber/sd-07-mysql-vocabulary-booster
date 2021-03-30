-- SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) "Nome completo",
-- (SELECT JOB_TITLE FROM hr.jobs WHERE JOB_ID = e.JOB_ID) AS "Cargo",
-- e.HIRE_DATE "Data de início do cargo",
-- ( SELECT DEPARTMENT_NAME FROM hr.departments WHERE DEPARTMENT_ID = e.DEPARTMENT_ID) "Departamento"
-- FROM hr.employees AS e
-- ORDER BY `Nome completo` DESC, `Cargo`;

SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) "Nome completo",
j.JOB_TITLE "Cargo",
jh.START_DATE "Data de início do cargo",
d.DEPARTMENT_NAME "Departamento"
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.jobs AS j ON j.JOB_ID = jh.JOB_ID
INNER JOIN hr.departments AS d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
