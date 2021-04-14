-- Ideia tirada do repositorio do eriquy jhordan

SELECT CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) AS "Nome completo",
-- https://stackoverflow.com/questions/10637581/mysql-date-format-dd-mm-yyyy-select-query
DATE_FORMAT(h.START_DATE,'%d/%m/%Y') AS "Data de início",
DATE_FORMAT(h.END_DATE,'%d/%m/%Y') AS "Data de rescisão",
ROUND(DATEDIFF(h.END_DATE, h.START_DATE) / 365, 2) AS "Anos trabalhados"
FROM hr.job_history AS h
INNER JOIN hr.employees AS e
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j
ON h.JOB_ID = j.JOB_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
