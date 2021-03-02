USE hr;
SELECT CONCAT(a.first_name, ' ', a.last_name) AS 'Nome completo funcionário 1',
a.salary AS 'Salário funcionário 1',
a.phone_number AS 'Telefone funcionário 1',
CONCAT(b.first_name, ' ', b.last_name) AS 'Nome completo funcionário 2',
b.salary AS 'Salário funcionário 2',
b.phone_number AS 'Telefone funcionário 2'
FROM employees a, employees b
WHERE a.job_id=b.job_id AND a.first_name <> b.first_name
ORDER BY CONCAT(a.first_name, ' ', a.last_name),
CONCAT(b.first_name, ' ', b.last_name);
