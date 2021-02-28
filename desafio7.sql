SELECT UCASE(CONCAT(emplss.FIRST_NAME, ' ', emplss.LAST_NAME)) AS 'Nome completo',
jobHist.START_DATE AS 'Data de início',
emplss.SALARY AS 'Salário'
FROM hr.job_history AS jobHist
INNER JOIN hr.employees AS emplss
ON jobHist.EMPLOYEE_ID = emplss.EMPLOYEE_ID
WHERE MONTH(START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
