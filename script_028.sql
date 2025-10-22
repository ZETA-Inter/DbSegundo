CREATE OR REPLACE PROCEDURE sp_create_goal( pCompanyId   INTEGER
										  , pDescription VARCHAR
										  , pProgramId   INTEGER DEFAULT NULL
								          )
LANGUAGE plpgsql AS
$$ 
BEGIN
	IF NOT EXISTS (SELECT 1 FROM companies WHERE id = pCompanyId) THEN
		RAISE EXCEPTION 'Erro: company_id inválido';
	END IF;

	IF pProgramId EXISTS THEN
		IF NOT EXISTS (SELECT 1 FROM worker_programs wp JOIN workers w ON w.id = wp.worker_id WHERE w.company_id = pCompanyId and wp.program_id = pProgramId) THEN
			RAISE EXCEPTION 'Erro: não existem produtores com esse curso';
		END IF; 
	END IF;

	IF EXISTS (SELECT 1 FROM goals WHERE description = pDescription AND company_id = pCompanyId) THEN
		RAISE EXCEPTION 'Erro: Não é possível criar uma meta com uma descrição igual a de uma meta pré-existente';
	END IF;

	IF pProgramId IS NULL THEN
		INSERT INTO goals ( company_id
				          , description
						  )
						VALUES ( pCompanyId
							   , pDescription
							   );
	ELSE
		INSERT INTO goals ( company_id
				          , description
			              , program_id
						  )
						VALUES ( pCompanyId
							   , pDescription
							   , pProgramId
							   );
	END IF;
	
END
$$;

