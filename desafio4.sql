SELECT jb.job_title AS "Cargo", ROUND(AVG(em.salary),2) AS "Média salarial", (CASE
      WHEN ROUND(AVG(em.salary),2) > 10500 THEN 'CEO'
      WHEN ROUND(AVG(em.salary),2) >= 7501 AND ROUND(AVG(em.salary),2) <= 10500 THEN 'Sênior'
      WHEN ROUND(AVG(em.salary),2) >= 5801 AND ROUND(AVG(em.salary),2) <= 7500 THEN 'Pleno'
    ELSE 'Júnior'
    END) AS "Senioridade" 
FROM jobs AS jb
JOIN employees AS em
ON em.job_id =  jb.job_id
GROUP BY em.job_id
ORDER BY ROUND(AVG(em.salary),2), jb.job_title;
