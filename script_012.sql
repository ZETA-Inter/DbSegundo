CREATE OR REPLACE PROCEDURE sp_create_goal( pCompanyId   INTEGER
										  , pDescription VARCHAR
										  , pProgramId   INTEGER
								          )
LANGUAGE plpgsql AS
$$ 
BEGIN
	IF NOT EXISTS (SELECT 1 FROM companies WHERE id = pCompanyId) THEN
		RAISE EXCEPTION 'Erro: company_id inválido';
	END IF;

	IF NOT EXISTS (SELECT 1 FROM worker_programs wp JOIN workers w ON w.id = wp.worker_id WHERE w.company_id = pCompanyId and wp.program_id = pProgramId) THEN
		RAISE EXCEPTION 'Erro: não existem produtores com esse curso';
	END IF; 

	IF EXISTS (SELECT 1 FROM goals WHERE description = pDescription AND company_id = pCompanyId) THEN
		RAISE EXCEPTION 'Erro: Não é possível criar uma meta com uma descrição igual a de uma meta pré-existente';
	END IF;

	INSERT INTO goals ( company_id
					  , description
					  , program_id
					  )
					VALUES ( pCompanyId
						   , pDescription
						   , pProgramId
						   );
END
$$;


CREATE OR REPLACE PROCEDURE sp_assign_goal(
    pGoalId    INTEGER,
    pWorkerIds INTEGER[]
)
LANGUAGE plpgsql AS
$$
BEGIN
    -- Validate goal
    IF NOT EXISTS (SELECT 1 FROM goals WHERE id = pGoalId) THEN
        RAISE EXCEPTION 'Erro: goal_id inválido';
    END IF;

    -- Validate that all worker_ids exist
    IF EXISTS (
        SELECT unnest(pWorkerIds) EXCEPT SELECT id FROM workers
    ) THEN
        RAISE EXCEPTION 'Erro: Existem worker_ids inválidos';
    END IF;
	
    -- Insert for each worker
    INSERT INTO worker_goals (worker_id, goal_id, completed)
    SELECT w, pGoalId, FALSE
    FROM unnest(pWorkerIds) AS w;
END;
$$;

