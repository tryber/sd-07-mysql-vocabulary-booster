SELECT CONCAT(emplss.FIRST_NAME, ' ', emplss.LAST_NAME) AS 'Nome completo',
jobss.JOB_TITLE AS 'Cargo',
jobHist.START_DATE AS 'Data de início do cargo',
depss.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jobHist
INNER JOIN hr.employees AS emplss ON jobHist.EMPLOYEE_ID = emplss.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobss ON jobHist.JOB_ID = jobss.JOB_ID
INNER JOIN hr.departments AS depss ON jobHist.DEPARTMENT_ID = depss.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
