use hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(300))
BEGIN
select
    round(avg(e.SALARY), 2) as 'Média salarial'
    from hr.employees e
inner join hr.jobs j on j.JOB_ID = e.JOB_ID
where j.JOB_TITLE = cargo;
END $$
DELIMITER ;
