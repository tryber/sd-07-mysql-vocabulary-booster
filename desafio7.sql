SELECT
CONCAT(UCASE(emp.FIRST_NAME), ' ', UCASE(emp.LAST_NAME)) AS 'Nome completo',
jobH.START_DATE AS 'Data de início',
emp.SALARY AS 'Salário'
FROM hr.job_history AS jobH
INNER JOIN hr.employees AS emp ON jobH.EMPLOYEE_ID = emp.EMPLOYEE_ID AND
MONTH(jobH.START_DATE) IN(1, 2, 3)
ORDER BY CONCAT(UCASE(emp.FIRST_NAME), ' ', UCASE(emp.LAST_NAME)), jobH.START_DATE;
