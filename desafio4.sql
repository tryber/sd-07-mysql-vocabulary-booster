SELECT J.JOB_TITLE AS Cargo, ROUND(AVG(M.SALARY),2) AS 'Média salarial',
  CASE
      WHEN AVG(M.SALARY) >= '2000' AND AVG(M.SALARY) <= '5800' THEN 'Júnior'
      WHEN AVG(M.SALARY) >= '5801' AND AVG(M.SALARY) <= '7500' THEN 'Pleno'
      WHEN AVG(M.SALARY) >= '7501' AND AVG(M.SALARY) <= '10500' THEN 'Sênior'
      WHEN AVG(M.SALARY) > '10500' THEN 'CEO'
      END AS "Senioridade"
      FROM hr.jobs AS J
      INNER JOIN hr.employees AS M
      ON J.JOB_ID = M.JOB_ID
      GROUP BY J.JOB_TITLE
      ORDER BY ROUND(AVG(M.SALARY),2);
