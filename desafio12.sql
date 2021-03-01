SELECT
CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS 'Nome completo funcionário 1',
t1.SALARY as 'Salário funcionário 1',
t1.PHONE_NUMBER as 'Telefone funcionário 1',
CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) as 'Nome completo funcionário 2',
t2.SALARY as 'Salário funcionário 2',
t2.PHONE_NUMBER as 'Telefone funcionário 2'
FROM employees t1, employees t2
where t1.JOB_ID = t2.JOB_ID AND t1.EMPLOYEE_ID != t2.EMPLOYEE_ID
order by CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME), CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME)
