DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(35))
    BEGIN
        DECLARE jobID VARCHAR(35);
        SELECT JOB_ID
            INTO jobID
            FROM hr.jobs
            WHERE JOB_TITLE = job;

        SELECT ROUND(AVG(SALARY),2) AS "Média salarial"
            FROM hr.employees
            WHERE JOB_ID = jobID;
    END $$
DELIMITER ;
