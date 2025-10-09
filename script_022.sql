DROP FUNCTION fn_most_recent_progress(pworkerid integer);

CREATE OR REPLACE FUNCTION fn_most_recent_progress( pWorkerId INTEGER
												  )
RETURNS TABLE (worker INTEGER, worker_points INTEGER, worker_progress DECIMAL) AS
$$
BEGIN
	IF NOT EXISTS (SELECT 1 FROM workers WHERE id = pWorkerId) THEN
		RAISE EXCEPTION 'Erro: worker_id inválido';
	END IF;
	RETURN QUERY
	SELECT worker_id
	     , points
		 , progress_percentage :: DECIMAL
	  FROM progresses 
	 WHERE worker_id = pWorkerId
	   AND date = (SELECT MAX(date) FROM progresses WHERE worker_id = pWorkerId);
END 
$$
LANGUAGE plpgsql;