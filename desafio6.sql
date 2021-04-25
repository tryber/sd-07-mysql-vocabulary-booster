SELECT
CONCAT(FIRST_NAME, " ",LAST_NAME) "Nome completo",
START_DATE "Data de início do cargo",
JOB_TITLE Cargo,
DEPARTMENT_NAME Departamento
FROM hr.job_history h
INNER JOIN hr.employees e
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN hr.jobs j
ON h.JOB_ID = j.JOB_ID
INNER JOIN hr.departments d
ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
