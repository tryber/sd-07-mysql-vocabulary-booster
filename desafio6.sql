SELECT CONCAT(em.FIRST_NAME, ' ',em.LAST_NAME) AS 'Nome completo',
jo.JOB_TITLE AS 'Cargo',
DATE(hist.START_DATE) AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS em
INNER JOIN hr.job_history AS hist
ON em.EMPLOYEE_ID = hist.EMPLOYEE_ID
INNER JOIN hr.departments AS dep
ON hist.DEPARTMENT_ID = dep.DEPARTMENT_ID
INNER JOIN hr.jobs AS jo
ON jo.JOB_ID = hist.JOB_ID
ORDER BY 1 DESC, 2;
