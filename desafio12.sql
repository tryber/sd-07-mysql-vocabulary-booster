SELECT CONCAT(A.first_name, ' ', A.last_name) AS 'Nome completo funcionário 1',
A.salary AS 'Salário funcionário 1',
A.phone_number AS 'Telefone funcionário 1',
CONCAT(B.first_name, ' ', B.last_name) AS 'Nome completo funcionário 2',
B.salary AS 'Salário funcionário 2',
B.phone_number AS 'Telefone funcionário 2'
FROM hr.employees AS A,
hr.employees AS B
WHERE A.employee_id <> B.employee_id AND A.job_id = B.job_id
ORDER BY CONCAT(A.first_name, ' ', A.last_name) ASC, CONCAT(B.first_name, ' ', B.last_name) ASC;
