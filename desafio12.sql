SELECT
CONCAT(e1.first_name, ' ', e1.last_name) AS 'Nome completo funcionário 1',
e1.SALARY AS 'Salário funcionário 1',
e1.phone_number AS 'Telefone funcionário 1',
CONCAT(e2.first_name, ' ', e2.last_name) AS 'Nome completo funcionário 2',
e2.SALARY AS 'Salário funcionário 2',
e2.phone_number AS 'Telefone funcionário 2',
FROM hr.employees e1
JOIN hr.employees e2 ON e1.job_id = e2.job_id
WHERE CONCAT(e1.first_name, ' ', e1.last_name) <> CONCAT(e2.first_name, ' ', e2.last_name)
ORDER BY CONCAT(e1.first_name, ' ', e1.last_name), CONCAT(e2.first_name, ' ', e2.last_name);
