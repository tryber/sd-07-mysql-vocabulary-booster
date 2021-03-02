USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
  SELECT
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    job.JOB_TITLE AS 'Cargo',
    dep.DEPARTMENT_NAME AS 'Departamento'
  FROM
    hr.job_history AS jhist
  INNER JOIN hr.employees AS emp
    ON jhist.EMPLOYEE_ID = emp.EMPLOYEE_ID
  INNER JOIN hr.jobs AS job
    ON jhist.JOB_ID = job.JOB_ID
  INNER JOIN hr.departments AS dep
    ON jhist.DEPARTMENT_ID = dep.DEPARTMENT_ID
  WHERE emp.EMAIL = email
  ORDER BY
    'Nome completo' DESC,
    'Cargo' ASC;
END $$

DELIMITER ;
