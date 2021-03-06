SELECT CONCAT(empA.FIRST_NAME, ' ', empA.LAST_NAME) AS 'Nome completo funcionário 1',
empA.SALARY AS 'Salário funcionário 1', empA.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(empB.FIRST_NAME, ' ', empB.LAST_NAME) AS 'Nome completo funcionário 2',
empB.SALARY AS 'Salário funcionário 2', empB.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS empA, hr.employees AS empB
WHERE (CONCAT(empA.FIRST_NAME, ' ', empA.LAST_NAME) <> CONCAT(empB.FIRST_NAME, ' ', empB.LAST_NAME))
AND empA.JOB_ID = empB.JOB_ID ORDER BY CONCAT(empA.FIRST_NAME, ' ', empA.LAST_NAME), 
CONCAT(empB.FIRST_NAME, ' ', empB.LAST_NAME);
