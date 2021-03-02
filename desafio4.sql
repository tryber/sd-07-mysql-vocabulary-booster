-- Desafio 4
-- Obtenha informações a respeito dos salários das pessoas empregadas.
-- Use o banco hr como referência
-- Crie uma query que exiba 03 colunas:
-- A primeira deve possuir o alias "Cargo" e exibir o nome do cargo.
-- A segunda deve possuir o alias "Média salarial" e exibir a média dos salários 
-- das pessoas empregadas que possuem o cargo em questão.
-- A terceira deve possuir o alias "Senioridade" e categorizar o nível de 
-- senioridade do cargo com base na média salarial, da seguinte forma:
-- Média salarial entre 2000 - 5800 -> Júnior
-- Média salarial entre 5801 - 7500 -> Pleno
-- Média salarial entre 7501 - 10500 -> Sênior
-- Média salarial acima de 10500 -> CEO
-- Sempre que fizer uso da média salarial, arredonde o valor para 02 casas decimais.
-- Os resultados devem estar ordenados pela média salarial em ordem crescente.
-- Em caso de empate na média, os resultados devem ser ordenados pelo nome do cargo em ordem alfabética.
SELECT
J.JOB_TITLE AS "Cargo",
(SELECT ROUND(AVG(E.SALARY), 2) FROM hr.employees AS E WHERE E.JOB_ID = J.JOB_ID) AS "Média Salarial",
(SELECT
CASE
WHEN (ROUND(AVG(E.SALARY), 2) >= 2000 AND ROUND(AVG(E.SALARY), 2) <= 5800) THEN 'Júnior'
WHEN (ROUND(AVG(E.SALARY), 2) >= 5801 AND ROUND(AVG(E.SALARY), 2) <= 7500) THEN 'Pleno'
WHEN (ROUND(AVG(E.SALARY), 2) >= 7501 AND ROUND(AVG(E.SALARY), 2) <= 10500) THEN 'Sénior'
WHEN ROUND(AVG(E.SALARY), 2) > 10500 THEN 'CEO'
END
FROM hr.employees AS E WHERE E.JOB_ID = J.JOB_ID) AS "Senioridade"
FROM	hr.jobs as J
ORDER BY 2, 1;
