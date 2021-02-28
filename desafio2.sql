SELECT job_title AS Cargo,
CASE 
WHEN Max_Salary >=5000 and Max_Salary <=10000 THEN 'Baixo'
WHEN Max_Salary >=10001 and Max_Salary <=20000 THEN 'Médio'
WHEN Max_Salary >=20001 and Max_Salary <=30000 THEN 'Alto'
ELSE 'Altíssimo'
END AS Nível
FROM hr.jobs
ORDER BY Cargo;
