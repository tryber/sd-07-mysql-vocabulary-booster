SELECT
  CONCAT(e.first_name, " ", e.last_name) AS 'Nome completo',
  DATE_FORMAT(jh.start_date, '%d/%m/%Y') AS 'Data de início',
  DATE_FORMAT(jh.end_date, '%d/%m/%Y') AS 'Data de rescisão',
  ROUND((TO_DAYS(jh.end_date) - TO_DAYS(jh.start_date)) / 365, 2) AS 'Anos trabalhados'  
FROM hr.employees AS e
JOIN hr.job_history AS jh
  ON e.employee_id = jh.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`;
