SELECT cargo.JOB_TITLE AS Cargo,ROUND(AVG(employe.SALARY), 2) AS "Média salarial",
CASE
   WHEN AVG(employe.SALARY) >=2000 AND AVG(employe.SALARY) <= 5800 THEN 'Júnior'
   WHEN AVG(employe.SALARY) > 5800 AND AVG(employe.SALARY) <= 7500 THEN 'Pleno'
   WHEN AVG(employe.SALARY) > 7500 AND AVG(employe.SALARY) <= 10500 THEN 'Sênior'
   WHEN AVG(employe.SALARY) >= 10500 THEN 'CEO'
   END AS Senioridade
FROM hr.jobs AS cargo
INNER JOIN hr.employees AS employe
ON cargo.JOB_ID = employe.JOB_ID
GROUP BY employe.JOB_ID
ORDER BY ROUND(AVG(employe.SALARY), 2),cargo.JOB_TITLE;
