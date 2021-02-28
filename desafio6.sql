USE hr;
SELECT 
	CONCAT(EMPLOYEES.FIRST_NAME, ' ', EMPLOYEES.LAST_NAME) AS 'Nome completo',
    JOBS.JOB_TITLE AS Cargo,
    HIS_JOB.START_DATE AS 'Data de início do cargo',
    DEPARTMENTS.DEPARTMENT_NAME AS Departamento
FROM job_history AS HIS_JOB
INNER JOIN employees AS EMPLOYEES ON HIS_JOB.EMPLOYEE_ID = EMPLOYEES.EMPLOYEE_ID
INNER JOIN jobs AS JOBS ON JOBS.JOB_ID = HIS_JOB.JOB_ID
INNER JOIN departments AS DEPARTMENTS ON DEPARTMENTS.DEPARTMENT_ID = HIS_JOB.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, JOB_TITLE;
