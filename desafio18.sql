SELECT 
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) `Nome completo`,
JH.START_DATE `Data de início`,
JH.END_DATE `Data de rescisão`,
DATEDIFF(JH.END_DATE, JH.START_DATE)/30/12 `Anos trabalhados`
FROM hr.job_history JH, hr.employees E
WHERE E.EMPLOYEE_ID=JH.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
