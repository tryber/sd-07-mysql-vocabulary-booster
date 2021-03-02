SELECT JOB.JOB_TITLE AS "Cargo",
ROUND(AVG(EMP.SALARY), 2) AS "Diferença entre salários máximo e mínimo",
CASE
WHEN AVG(EMP.SALARY) >= 2000 AND AVG(EMP.SALARY) <= 5800 THEN "Júnior"
WHEN AVG(EMP.SALARY) >= 5801 AND AVG(EMP.SALARY) <= 7500 THEN "Pleno"
WHEN AVG(EMP.SALARY) >= 7501 AND AVG(EMP.SALARY) <= 10500 THEN "Sênior"
ELSE "CEO"
END AS "Senioridade"
FROM hr.employees AS EMP
JOIN hr.jobs AS JOB
ON EMP.JOB_ID = JOB.JOB_ID
GROUP BY JOB.JOB_ID
ORDER BY AVG(EMP.SALARY);
