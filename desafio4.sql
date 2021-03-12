ROUND(AVG(E.SALARY), 2) AS 'Média salarial',
  CASE
    WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN ROUND(AVG(E.SALARY), 2) <= 7500 THEN 'Pleno'
    WHEN ROUND(AVG(E.SALARY), 2) <= 10500 THEN 'Sênior'
  ELSE 'CEO'
END AS Senioridade
FROM hr.employees AS E
INNER JOIN hr.jobs AS J ON E.JOB_ID = J.JOB_ID
GROUP BY J.JOB_TITLE 
ORDER BY ROUND(AVG(E.SALARY), 2), J.JOB_TITLE;
