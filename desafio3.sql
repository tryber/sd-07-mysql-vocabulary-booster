SELECT job_title AS Cargo, (Max_Salary - Min_Salary) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
ORDER BY (Max_Salary - Min_Salary) ASC, Cargo ASC;
