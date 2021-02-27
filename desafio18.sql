SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(job_hist.START_DATE, '%d/%m/%Y') AS 'Data de Início',
DATE_FORMAT(job_hist.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS job_hist
INNER JOIN hr.employees AS employees ON job_hist.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
