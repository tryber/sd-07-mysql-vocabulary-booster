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
WHEN (J.MAX_SALARY >= 5000 AND J.MAX_SALARY <= 10000) THEN 'Baixo'
WHEN (J.MAX_SALARY >= 10001 AND J.MAX_SALARY <= 20000) THEN 'Médio'
WHEN (J.MAX_SALARY >= 20001 AND J.MAX_SALARY <= 30000) THEN 'Alto'
WHEN J.MAX_SALARY > 30000 THEN 'Altíssimo'
END AS "Nível"
FROM 	hr.jobs AS J
ORDER BY 1;
