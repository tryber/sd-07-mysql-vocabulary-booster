SELECT 
  jb.job_title AS "Cargo",
  (jb.max_salary - jb.min_salary) AS "Variação Salarial",
  ROUND(((jb.min_salary) /12), 2) AS "Média mínima mensal",
  ROUND(((jb.max_salary) /12), 2) AS "Média máxima mensal"
FROM jobs AS jb
JOIN employees AS em
ON em.job_id =  jb.job_id
GROUP BY em.job_id
ORDER BY `Variação Salarial`, Cargo;
