SELECT UCASE(CONCAT(empl.FIRST_NAME," ",empl.LAST_NAME)) AS "Nome completo", 
jobH.START_DATE AS "Data de início",
empl.SALARY AS "Salário"
FROM hr.employees AS empl
INNER JOIN hr.job_history AS jobH
ON empl.EMPLOYEE_ID = jobH.EMPLOYEE_ID
WHERE MONTH(START_DATE) < 4
ORDER BY `Nome completo`, jobH.START_DATE;
