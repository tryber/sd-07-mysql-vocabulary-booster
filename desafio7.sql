SELECT UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS "Nome Completo",
e.HIRE_DATE AS "Data de início",
e.SALARY AS "Salário"
FROM hr.employees AS e
ORDER BY UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)), e.HIRE_DATE;
