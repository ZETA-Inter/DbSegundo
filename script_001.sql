CREATE OR REPLACE PROCEDURE sp_create_progress( pWorkerId           INTEGER
											  , pPoints             INTEGER
											  , pProgressPercentage DECIMAL
								              )
LANGUAGE plpgsql AS
$$ 
DECLARE 
	vPoints integer;
	vPercentage decimal;
BEGIN
	IF NOT EXISTS (SELECT 1 FROM workers WHERE id = pWorkerId) THEN
		RAISE EXCEPTION 'Erro: worker_id inválido';
	END IF;
	IF pProgressPercentage < 0 THEN
		RAISE EXCEPTION 'Erro: a porcentagem de progresso nao pode ser negativa';
	END IF;
	SELECT p.progress_percentage + pProgressPercentage 
	  INTO vPercentage 
	  FROM progresses p 
	 WHERE p.worker_id = pWorkerId 
	   AND date = (SELECT MAX(date) 
				     FROM progresses 
				    WHERE worker_id = pWorkerId 
				  );
	IF vPercentage > 100 THEN
		RAISE EXCEPTION 'Erro: a soma do progresso nao pode ser superior a 100';
	END IF;
	SELECT p.points + pPoints 
	  INTO vPoints 
	  FROM progresses p 
	 WHERE p.worker_id = pWorkerId 
	   AND date = (SELECT MAX(date) 
				     FROM progresses 
				    WHERE worker_id = pWorkerId 
				  );
	INSERT INTO progresses ( date
						   , points
						   , progress_percentage
						   , worker_id
						   )
					VALUES ( current_date
						   , vPoints
						   , vPercentage
						   , pWorkerId
						   );
END
$$;


CREATE OR REPLACE FUNCTION fn_most_recent_progress( pWorkerId INTEGER
												  )
RETURNS TABLE (worker_id INTEGER, points INTEGER, progress_percentage DECIMAL) AS
$$
BEGIN
	IF NOT EXISTS (SELECT 1 FROM workers WHERE id = pWorkerId) THEN
		RAISE EXCEPTION 'Erro: worker_id inválido';
	END IF;
	RETURN QUERY
	SELECT worker_id
	     , points
		 , progress_percentage
	  FROM progresses 
	 WHERE worker_id = pWorkerId
	   AND date = (SELECT MAX(date) FROM progresses WHERE worker_id = pWorkerId);
END 
$$
LANGUAGE plpgsql;
