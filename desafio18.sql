SELECT CONCAT(hemp.FIRST_NAME, ' ', hemp.LAST_NAME) AS 'Nome completo',
CONCAT(DAY(hjh.START_DATE), '/', MONTH(hjh.START_DATE), '/', YEAR(hjh.START_DATE)) AS 'Data de início',
CONCAT(DAY(hjh.END_DATE), '/', MONTH(hjh.END_DATE), '/', YEAR(hjh.END_DATE)) AS 'Data de recisão',
ROUND(DATEDIFF(hjh.END_DATE, hjh.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees hemp
INNER JOIN hr.job_history hjh ON hemp.EMPLOYEE_ID = hjh.EMPLOYEE_ID
ORDER BY 1, 4;
