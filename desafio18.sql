SELECT CONCAT(E.first_name,' ',E.last_name) AS 'Nome completo',
DATE_FORMAT(J.start_date, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(J.end_date, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(J.end_date, J.start_date)/365,2) AS 'Anos trabalhados'
FROM hr.employees AS E
INNER JOIN hr.job_history AS J
ON E.employee_id = J.employee_id
ORDER BY CONCAT(E.first_name,' ',E.last_name) ASC, ROUND(DATEDIFF(J.end_date, J.start_date)/365,2) ASC;
