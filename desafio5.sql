SELECT 
j.JOB_TITLE AS "Cargo",
SUM((j.MAX_SALARY - j.MIN_SALARY)/12) AS "Variação Salarial",
ROUND(MIN(e.SALARY),2) AS "Média mínima mensal",
ROUND(MAX(e.SALARY),2) AS "Média máxima mensal" 
FROM hr.employees AS e
INNER JOIN hr.jobs AS j ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY ROUND(AVG(e.SALARY),2), j.JOB_TITLE ASC;