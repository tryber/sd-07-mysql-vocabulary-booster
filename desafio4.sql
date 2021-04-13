SELECT J.JOB_TITLE AS "Cargo" , 
ROUND(AVG(E.SALARY), 2) AS "Média salarial",
CASE WHEN AVG(E.SALARY)  >= 2000 AND AVG(E.SALARY) <= 5800 THEN "Júnior"
WHEN AVG(E.SALARY) >= 5801 AND AVG(E.SALARY) <= 7500 THEN "Pleno"
WHEN AVG(E.SALARY) >= 7501 AND AVG(E.SALARY) <= 10500 THEN "Sênior"
WHEN AVG(E.SALARY) > 10500  THEN "CEO" 
ELSE 'INVALIDO'
END AS "Senioridade"
FROM hr.employees AS E 
INNER JOIN hr.jobs AS J 
ON E.JOB_ID = J.JOB_ID 
GROUP BY J.JOB_TITLE 
ORDER BY ROUND(AVG(E.SALARY), 2) , J.JOB_TITLE;
