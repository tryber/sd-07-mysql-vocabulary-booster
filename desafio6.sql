SELECT CONCAT(E.FIRST_NAME, " ", E.LAST_NAME) AS "Nome completo",
J.JOB_TITLE AS "Cargo",
E.HIRE_DATE AS "Data de início do cargo",
D.DEPARTMENT_NAME AS "Departamento"
FROM hr.employees AS E
INNER JOIN hr.jobs AS J ON hr.E.JOB_ID = hr.J.JOB_ID
INNER JOIN hr.departments AS D ON hr.E.DEPARTMENT_ID = hr.D.DEPARTMENT_ID
ORDER BY 1 DESC, 2 ASC;
