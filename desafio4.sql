SELECT t2.DEPARTMENT_NAME AS `Cargo`, (ROUND(AVG(t1.salary), 2)) AS `Média Salarial`,
CASE
	WHEN (ROUND(AVG(t1.salary), 2)) <= 5800 THEN "Júnior"
    WHEN (ROUND(AVG(t1.salary), 2)) > 5800 AND (AVG(t1.salary)) <= 7500 THEN "Pleno"
    WHEN (ROUND(AVG(t1.salary), 2)) > 7500 AND (AVG(t1.salary)) <= 10500 THEN "Sênior"
    WHEN (ROUND(AVG(t1.salary), 2)) > 10500 THEN "CEO"
END AS `Senioridade`
FROM hr.employees as t1
INNER JOIN hr.departments as t2
ON t1.department_id = t2.department_id
GROUP BY t2.DEPARTMENT_NAME
ORDER BY `Média Salarial`, `Cargo`;
