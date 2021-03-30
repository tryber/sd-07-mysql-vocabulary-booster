SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
(SELECT JOB_TITLE FROM hr.jobs WHERE JOB_ID = emp.JOB_ID) AS 'Cargo',
HIRE_DATE AS 'Data de início do cargo',
dpt.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees emp
INNER JOIN hr.departments dpt
ON dpt.MANAGER_ID = emp.MANAGER_ID;
