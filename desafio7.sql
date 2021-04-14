SELECT UCASE(CONCAT(emplo.FIRST_NAME, ' ', emplo.LAST_NAME)) AS 'Nome completo', jhist.START_DATE AS 'Data de início', emplo.SALARY AS 'Salário'
FROM hr.job_history AS jhist
INNER JOIN hr.employees AS emplo
ON jhist.EMPLOYEE_ID = emplo.EMPLOYEE_ID
WHERE MONTH(jhist.START_DATE) IN (01, 02, 03)
ORDER BY `Nome Completo`, `Data de início`;
