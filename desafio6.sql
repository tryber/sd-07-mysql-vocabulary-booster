SELECT 
CONCAT(emp.FIRST_NAME, ' ' , emp.LAST_NAME) AS 'Nome completo',
(SELECT JOB_TITLE FROM hr.jobs WHERE JOB_ID = emp.JOB_ID) AS 'Cargo',
jobH.START_DATE AS 'Data de início do cargo',
(SELECT DEPARTMENT_NAME FROM hr.departments WHERE emp.DEPARTMENT_ID = DEPARTMENT_ID) AS 'Departamento'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jobH ON 
emp.JOB_ID = jobH.JOB_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ' , emp.LAST_NAME) DESC, 'Cargo';
