SELECT
CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo funcionário 1`,
e.salary AS 'Salário funcionário 1',
e.phone_number AS 'Telefone funcionário 1',
CONCAT(eo.first_name, ' ', eo.last_name) AS `Nome completo funcionário 2`,
eo.salary AS 'Salário funcionário 2',
eo.phone_number AS 'Telefone funcionário 2'
FROM hr.employees e
INNER JOIN hr.employees eo ON eo.job_id = e.job_id
WHERE CONCAT(e.first_name, ' ', e.last_name) != CONCAT(eo.first_name, ' ', eo.last_name)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
