SELECT
CONCAT(first_name, ' ', last_name) AS 'Nome completo',
CONCAT(LPAD(DAY(jh.start_date), 2, '0'), '/' LPAD(MONTH(jh.start_date), 2 '0'), '/', YEAR(jh.start_date)) AS 'Data de início',
CONCAT(LPAD(DAY(jh.end_date), 2, '0'), '/' LPAD(MONTH(jh.end_date), 2 '0'), '/', YEAR(jh.end_date)) AS 'Data de rescisão',
ROUND(DATEDIFF(jh.end_date, jh.start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history jh
JOIN hr.employee e
ON jh.employee_id = e.employee_id
ORDER BY `nome completo`, `Anos trabalhados`;
