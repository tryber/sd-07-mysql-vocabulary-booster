SELECT UPPER(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) `Nome completo`,
JH.START_DATE `Data de início`,
E.SALARY Salário
FROM hr.job_history JH, hr.employees E
WHERE (MONTH(JH.START_DATE)=1 OR MONTH(JH.START_DATE)=2 OR MONTH(JH.START_DATE)=3)
AND JH.EMPLOYEE_ID=E.EMPLOYEE_ID
ORDER BY `Nome completo`, `Data de início`;
