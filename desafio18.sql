SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
CONCAT(SUBSTRING(JH.START_DATE, 9, 2), '/',SUBSTRING(JH.START_DATE, 6, 2), '/',SUBSTRING(JH.START_DATE, 1, 4)) AS 'Data de início',
CONCAT(SUBSTRING(JH.END_DATE, 9, 2), '/', SUBSTRING(JH.END_DATE, 6, 2), '/', SUBSTRING(JH.END_DATE, 1, 4)) AS 'Data de rescisão',
ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME), ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE) / 365, 2);
