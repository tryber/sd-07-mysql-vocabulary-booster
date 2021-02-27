SELECT
	UCASE(CONCAT(E.FIRST_NAME,' ',E.LAST_NAME)) AS 'Nome completo',
	H.START_DATE AS 'Data de início',
	E.SALARY AS 'Salário'
FROM hr.job_history H
JOIN hr.employees E ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(H.START_DATE) <= 3
ORDER BY CONCAT(E.FIRST_NAME,' ',E.LAST_NAME), H.START_DATE;