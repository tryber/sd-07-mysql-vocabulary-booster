SELECT
CONCAT(hemp1.FIRST_NAME, ' ', hemp1.LAST_NAME) AS 'Nome completo funcionário 1',
hemp1.SALARY AS 'Salário funcionário 1',
hemp1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(hemp2.FIRST_NAME, ' ', hemp2.LAST_NAME) AS 'Nome completo funcionário 2',
hemp2.SALARY AS 'Salário funcionário 2',
hemp2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees hemp1, hr.employees hemp2
WHERE hemp1.JOB_ID = hemp2.JOB_ID AND hemp1.EMPLOYEE_ID <> hemp2.EMPLOYEE_ID
ORDER BY 1, 4;
