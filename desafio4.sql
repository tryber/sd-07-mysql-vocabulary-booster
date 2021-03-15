SELECT hrj.JOB_TITLE AS Cargo, ROUND(AVG(hre.SALARY), 2) AS 'Média salarial',
CASE
	WHEN AVG(hre.SALARY) >= 2000 AND AVG(hre.SALARY) <= 5800 THEN 'Júnior'
    WHEN AVG(hre.SALARY) >= 5801 AND AVG(hre.SALARY)<= 7500 THEN 'Pleno'
    WHEN AVG(hre.SALARY) >= 7501 AND AVG(hre.SALARY) <= 10500 THEN 'Sênior'
    ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs hrj INNER JOIN hr.employees hre ON hrj.JOB_ID = hre.JOB_ID
GROUP BY hrj.JOB_TITLE
ORDER BY `Média salarial`, hrj.JOB_TITLE;
