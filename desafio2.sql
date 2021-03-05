SELECT t2.DEPARTMENT_NAME AS `Cargo`, 
CASE 
	WHEN MAX(t1.salary) <= 10000 THEN "Baixo"
    WHEN MAX(t1.salary) > 10000 AND MAX(t1.salary) <= 20000 THEN "Médio"
    WHEN MAX(t1.salary) > 20000 AND MAX(t1.salary) <= 30000 THEN "Alto"
    WHEN MAX(t1.salary) > 30000 THEN "Altíssimo"
END AS `Nível`
FROM hr.employees as t1
INNER JOIN hr.departments as t2
ON t1.department_id = t2.department_id
GROUP BY t2.DEPARTMENT_NAME;
