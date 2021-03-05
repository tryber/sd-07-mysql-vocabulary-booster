SELECT DISTINCT CONCAT(t1.first_name, ' ', t1.last_name) AS `Nome Completo funcionário 1`, 
t1.salary AS `Salário funcionário 1`, t1.phone_number AS `Telefone funcionário 1`,
CONCAT(t2.first_name, ' ', t2.last_name) AS `Nome Completo funcionário 2`, 
t2.salary AS `Salário funcionário 2`, t2.phone_number AS `Telefone funcionário 2`
FROM hr.employees as t1, hr.employees as t2
WHERE CONCAT(t1.first_name, ' ', t1.last_name) <> CONCAT(t2.first_name, ' ', t2.last_name)
AND t1.job_id = t2.job_id
ORDER BY `Nome Completo funcionário 1`, `Nome Completo funcionário 2`;
