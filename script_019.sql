DROP FUNCTION fn_workers_by_program( pCompanyId INTEGER, pProgramId INTEGER );

CREATE OR REPLACE FUNCTION fn_workers_by_program(pCompanyId INTEGER, pProgramId INTEGER)
RETURNS TABLE (
    worker_id   INTEGER,
    worker_name VARCHAR(100)
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        w.id   AS worker_id,
        w.name AS worker_name
    FROM 
        workers w
    JOIN worker_programs wp 
      ON w.id = wp.worker_id
    WHERE wp.program_id = pProgramId
      AND w.company_id  = pCompanyId;
END;
$$;

