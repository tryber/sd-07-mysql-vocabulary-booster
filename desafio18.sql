SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS "Nome completo",
DATE_FORMAT(jobH.START_DATE , '%d/%m/%Y') AS "Data de início",
DATE_FORMAT(jobH.END_DATE , '%d/%m/%Y') AS "Data de rescisão",
ROUND(DATEDIFF(jobH.END_DATE, jobH.START_DATE) / 365, 2) AS "Anos trabalhados"
FROM hr.job_history as jobH
INNER JOIN hr.employees AS emp
ON jobH.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY `Nome Completo`, `Anos Trabalhados`;
-- source: https://www.w3schools.com/sql/func_mysql_date_format.asp
