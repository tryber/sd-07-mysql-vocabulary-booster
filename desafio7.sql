SELECT
UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'NOME COMPLETO',
START_DATE AS 'Data de início',
SALARY AS 'Salário'
FROM hr.employees emp
INNER JOIN hr.job_history jh
ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
HAVING MONTH(START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome Completo`, `Data de início`;

-- Não lembrava do having para relacionar as tabelas, acabei vendo como o @lucasvr39 e consegui fazer
