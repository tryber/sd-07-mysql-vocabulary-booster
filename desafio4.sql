SELECT J.Job_Title AS Cargo, ROUND(AVG(E.Salary),2) As 'Média salarial',
CASE 
WHEN AVG(E.Salary) >=2000 and AVG(E.Salary) <=5800 THEN 'Júnior'
WHEN AVG(E.Salary) >=5801 and AVG(E.Salary) <=7500 THEN 'Pleno'
WHEN AVG(E.Salary) >=7501 and AVG(E.Salary) <=10500 THEN 'Sênior'
ELSE 'CEO'
END AS Senioridade
FROM hr.jobs AS J
INNER JOIN hr.employees AS E
ON J.JOB_ID = E.JOB_ID
GROUP BY J.JOB_TITLE
ORDER BY ROUND(AVG(E.Salary),2);
