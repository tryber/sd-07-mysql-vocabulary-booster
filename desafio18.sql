SELECT CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) AS 'Nome completo',
CONCAT(date_format(t1.START_DATE, "%d"), '/', date_format(t1.START_DATE, "%m"), '/', YEAR(t1.START_DATE)) AS 'Data de início',
CONCAT(date_format(t1.END_DATE, "%d"), '/', date_format(t1.END_DATE, "%m"), '/', YEAR(t1.END_DATE)) AS 'Data de rescisão',
ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history as t1
INNER JOIN hr.employees AS t2
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
ORDER BY 1, 4;
