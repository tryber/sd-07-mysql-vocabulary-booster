SELECT
CONCAT(emp1.FIRST_NAME, ' ', emp1.LAST_NAME) 'Nome completo funcionário 1',
emp1.SALARY 'Salário funcionário 1',
emp1.PHONE_NUMBER 'Telefone funcionário 1',
CONCAT(emp2.FIRST_NAME, ' ', emp2.LAST_NAME) 'Nome completo funcionário 2',
emp2.SALARY 'Salário funcionário 2',
emp2.PHONE_NUMBER 'Telefone funcionário 2'
FROM hr.employees emp1
INNER JOIN
(
SELECT
*
FROM hr.employees
) emp2
ON emp1.JOB_ID = emp2.JOB_ID
HAVING `Nome completo funcionário 1` != `Nome completo funcionário 2`
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;

