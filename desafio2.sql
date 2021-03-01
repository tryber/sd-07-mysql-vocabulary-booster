-- Desafio 2
-- Categorize o nível de remuneração de cada cargo.
-- Use o banco hr como referência
-- Seu relatório deve possuir as seguintes colunas:
-- A primeira deve possuir o alias "Cargo" e exibir o nome do cargo.
-- A segunda deve possuir o alias "Nível" e exibir o nível de remuneração do cargo
-- com base no seu salário máximo, categorizando os níveis de remuneração da seguinte forma:
-- Salário máximo entre 5000 e 10000 -> Baixo
-- Salário máximo entre 10001 e 20000 -> Médio
-- Salário máximo entre 20001 e 30000 -> Alto
-- Salário máximo acima de 30000 -> Altíssimo
-- Os resultados devem estar ordenados pelo nome do cargo em ordem alfabética.
SELECT J.job_title as "Cargo",
CASE
WHEN (E.SALARY >= 5000 AND E.SALARY <= 10000) THEN 'Baixo'
WHEN (E.SALARY >= 10001 AND E.SALARY <= 20000) THEN 'Médio'
WHEN (E.SALARY >= 20001 AND E.SALARY <= 30000) THEN 'Alto'
WHEN E.SALARY > 30000 THEN 'Altíssimo'
END AS "Nível"
FROM 	hr.employees AS E
INNER JOIN hr.jobs as J
ON J.job_id = E.job_id
ORDER BY J.job_title;
