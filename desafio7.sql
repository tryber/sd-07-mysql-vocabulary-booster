SELECT
    UPPER(CONCAT(t2.first_name, ' ', t2.last_name)) AS 'Nome completo',
    t1.start_date AS 'Data de início',
    t2.salary AS 'Salário'
FROM hr.job_history AS t1
    INNER JOIN hr.employees AS t2
WHERE
    t1.employee_id = t2.employee_id AND
    MONTH(t1.start_date) IN(1, 2, 3)
ORDER BY `Nome Completo`, t1.start_date;
