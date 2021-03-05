SELECT UPPER(CONCAT(first_name, ' ', last_name)) AS `Nome Completo`, hire_date AS `Data de início`, salary AS `Salário`
FROM employees 
ORDER BY `Nome Completo`, `Data de início`;
