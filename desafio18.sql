SELECT 
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) `Nome completo`,
DATE_FORMAT(JH.START_DATE, '%d/%m/%Y') `Data de início`,
DATE_FORMAT(JH.END_DATE, '%d/%m/%Y')  `Data de rescisão`,
ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE)/30/12, 2) `Anos trabalhados`
FROM hr.job_history JH, hr.employees E
WHERE E.EMPLOYEE_ID=JH.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
