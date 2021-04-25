-- Desafio 12
-- Monte uma query que exiba 06 colunas:
-- A primeira deve possuir o alias "Nome completo funcionário 1" e exibir o nome completo da 
-- pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda deve possuir o alias "Salário funcionário 1" e exibir o salário dessa pessoa.
-- A terceira deve possuir o alias "Telefone funcionário 1" e exibir o número de telefone dessa pessoa.
-- A quarta deve possuir o alias "Nome completo funcionário 2" e exibir o nome completo da pessoa funcionária 
-- associada que possui o mesmo cargo (não se esqueça do espaço entre o nome e o sobrenome).
-- A quinta deve possuir o alias "Salário funcionário 2" e exibir o salário da pessoa funcionária associada 
-- que possui o mesmo cargo.
-- A sexta deve possuir o alias "Telefone funcionário 2" e exibir o número da pessoa funcionária associada 
-- que possui o mesmo cargo.
-- Os resultados devem estar ordenados pela coluna "Nome completo funcionário 1" em ordem alfabética.
-- Em caso de empate, os resultados devem ser ordenados pela coluna Nome completo funcionário 2" em ordem alfabética.
SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS "Nome completo funcionário 1",
E.SALARY AS "Salário funcionário 1",
E.PHONE_NUMBER AS "Telefone funcionário 1",
CONCAT(E2.FIRST_NAME, ' ', E2.LAST_NAME) AS "Nome completo funcionário 2",
E2.SALARY AS "Salário funcionário 2",
E2.PHONE_NUMBER AS "Telefone funcionário 2"
FROM hr.employees AS E, hr.employees AS E2
WHERE
E.JOB_ID = E2.JOB_ID AND
E.EMPLOYEE_ID <> E2.EMPLOYEE_ID
ORDER BY
1,
4;
