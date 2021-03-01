-- Crie uma query que exiba 02 colunas:
-- Use o banco hr como referência
-- A primeira deve possuir o alias "Cargo" e exibir o nome do cargo.
-- A segunda deve possuir o alias "Diferença entre salários máximo e mínimo" 
-- e exibir a diferença entre os salários máximo e mínimo para o cargo em questão.
-- Os resultados devem estar ordenados pela diferença entre salários máximo 
-- e mínimo em ordem crescente.
-- Em caso de empate nessa diferença os resultados devem ser ordenados 
-- pelo nome do cargo em ordem alfabética.
SELECT
J.JOB_TITLE AS "Cargo",
J.MAX_SALARY - J.MIN_SALARY AS "Diferença entre salários máximo e mínimo"
FROM	hr.jobs J
ORDER BY
2,
J.JOB_TITLE;
