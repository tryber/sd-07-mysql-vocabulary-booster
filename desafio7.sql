SELECT UPPER(CONCAT(FIRST_NAME, " ", LAST_NAME)) AS "Nome completo",
HIRE_DATE as "Data de início",
SALARY as "Salário"
FROM hr.employees

order by CONCAT(FIRST_NAME, " ", LAST_NAME), HIRE_DATE;
