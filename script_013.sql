
ALTER TABLE progresses
DROP COLUMN worker_id;

ALTER TABLE progresses
DROP CONSTRAINT progresses_worker_id_fkey;

ALTER TABLE progresses 
ADD COLUMN worker_program_id INTEGER;

ALTER TABLE progresses
ADD FOREIGN KEY (worker_program_id) REFERENCES worker_programs(id); 

CREATE OR REPLACE FUNCTION fn_most_recent_progress( pWorkerId  INTEGER
                                                  , pProgramId INTEGER
												  )
RETURNS TABLE (worker_id INTEGER, points INTEGER, progress_percentage DECIMAL) AS
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
	SELECT worker_id
	     , points
		 , progress_percentage
	  FROM progresses 
	 WHERE worker_program_id = pWorkerProgramId
	   AND date = (SELECT MAX(date) FROM progresses WHERE worker_program_id = vWorkerProgramId);
END 
$$
LANGUAGE plpgsql;