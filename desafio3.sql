SELECT t2.DEPARTMENT_NAME AS `Cargo`, (MAX(t1.salary) - (MIN(t1.salary))) AS `Diferença entre salários máximo e mínimo`
FROM hr.employees as t1
INNER JOIN hr.departments as t2
ON t1.department_id = t2.department_id
GROUP BY t2.DEPARTMENT_NAME
ORDER BY `Diferença entre salários máximo e mínimo`, `Cargo`;
