SELECT UCASE(CONCAT(E.first_name,' ',E.last_name)) AS 'Nome completo',
H.start_date AS 'Data de início',
E.salary AS 'Salário'
FROM hr.employees AS E
INNER JOIN hr.job_history AS H ON H.employee_id = E.employee_id
WHERE MONTH(H.start_date) IN (1,2,3)
ORDER BY CONCAT(E.first_name,' ',E.last_name) ASC, 'Data de início' DESC;
