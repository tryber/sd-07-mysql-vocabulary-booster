SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS "Nome completo funcionário 1",
emp.salary AS "Salário funcionário 1",
emp.phone_number AS "Telefone funcionário 1",
CONCAT(emp2.first_name, ' ', emp2.last_name) AS "Nome completo funcionário 2",
emp2.salary AS "Salário funcionário 2",
emp2.phone_number AS "Telefone funcionário 2"
FROM hr.employees AS emp,
hr.employees AS emp2
WHERE emp.job_id = emp2.job_id AND emp.employee_id <> emp2.employee_id
ORDER BY 1, 4;
