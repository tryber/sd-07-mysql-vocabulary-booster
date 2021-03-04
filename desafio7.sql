SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
HIRE_DATE AS 'Data de início do cargo',
SALARY AS 'Salário'
FROM hr.employees
ORDER BY `Nome completo`, HIRE_DATE;
