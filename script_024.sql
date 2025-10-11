ALTER TABLE worker_programs
DROP COLUMN progress_id;


CREATE OR REPLACE FUNCTION fn_most_recent_progress( pWorkerId INTEGER
												  )
RETURNS TABLE (worker INTEGER, worker_points INTEGER, worker_progress DECIMAL) AS
$$
BEGIN
	IF NOT EXISTS (SELECT 1 FROM workers WHERE id = pWorkerId) THEN
		RAISE EXCEPTION 'Erro: worker_id inválido';
	END IF;
	RETURN QUERY
	SELECT wp.worker_id
	     , p.points
		 , p.progress_percentage :: DECIMAL
	  FROM progresses p 
	       JOIN worker_programs wp ON wp.id = p.worker_program_id
	 WHERE wp.worker_id = pWorkerId
	   AND p.date = (SELECT MAX(p.date) FROM progresses p JOIN worker_programs wp ON wp.id = p.worker_program_id WHERE wp.worker_id = pWorkerId);
	   
END 
$$
LANGUAGE plpgsql;



CREATE OR REPLACE FUNCTION fn_most_recent_progress( pWorkerId  INTEGER
                                                  , pProgramId INTEGER
												  )
RETURNS TABLE (worker INTEGER, worker_points INTEGER, worker_progress DECIMAL) AS
$$
DECLARE
    vWorkerProgramId INTEGER;
BEGIN
	IF NOT EXISTS (SELECT 1 FROM workers WHERE id = pWorkerId) THEN
		RAISE EXCEPTION 'Erro: worker_id inválido';
	END IF;

    IF NOT EXISTS (SELECT 1 FROM programs WHERE id = pProgramId) THEN
        RAISE EXCEPTION 'Erro: program_id inválido';
    END IF;

    SELECT id INTO vWorkerProgramId FROM worker_programs WHERE program_id = pProgramId AND worker_id = pWorkerId;  

	RETURN QUERY
	SELECT wp.worker_id
	     , p.points
		 , p.progress_percentage :: DECIMAL
	  FROM progresses p 
	       JOIN worker_programs wp ON p.worker_program_id = wp.id
	 WHERE p.worker_program_id = vWorkerProgramId
	   AND date = (SELECT MAX(date) FROM progresses WHERE worker_program_id = vWorkerProgramId);
END 
$$
LANGUAGE plpgsql;
