SELECT CONCAT(E.FIRST_NAME, ' ',E.LAST_NAME) AS "Nome completo" ,J.JOB_TITLE AS "Cargo" ,
JH.START_DATE AS "Data de início do cargo" , 
D.DEPARTMENT_NAME AS "Departamento" FROM hr.jobs AS J
INNER JOIN hr.employees AS E ON E.JOB_ID = J.JOB_ID
INNER JOIN hr.departments AS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN hr.job_history AS JH ON JH.JOB_ID = E.JOB_ID 
ORDER BY  CONCAT(E.FIRST_NAME, ' ',E.LAST_NAME) DESC , J.JOB_TITLE;
