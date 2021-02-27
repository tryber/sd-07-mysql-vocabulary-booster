SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
DATE_FORMAT(jh.start_date, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jh.end_date, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(((DATEDIFF(jh.end_date, jh.start_date)) / 365), 2) AS 'Anos trabalhados'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.employee_id = e.employee_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name),
ROUND(((DATEDIFF(jh.end_date, jh.start_date)) / 365), 2);
