USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN EMP_EMAIL VARCHAR(100))
BEGIN
SELECT CONCAT(hemp.FIRST_NAME, ' ', hemp.LAST_NAME) AS 'Nome completo',
hdep.DEPARTMENT_NAME AS 'Departamento', hjob.JOB_TITLE AS 'Cargo'
FROM hr.employees hemp
INNER JOIN hr.job_history hjh ON hemp.EMPLOYEE_ID = hjh.EMPLOYEE_ID
INNER JOIN hr.jobs hjob ON hjh.JOB_ID = hjob.JOB_ID
INNER JOIN hr.departments hdep ON hdep.DEPARTMENT_ID = hjh.DEPARTMENT_ID
WHERE hemp.EMAIL = EMP_EMAIL
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
