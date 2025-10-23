	-- PROCEDURE
	-- Criar um novo programa
	CREATE OR REPLACE PROCEDURE sp_create_program (
													pProgramName VARCHAR,
													pDescription VARCHAR,
													pSegmentId INT
												)
	LANGUAGE plpgsql AS $$
	BEGIN

		IF NOT EXISTS (
			SELECT id FROM segments
			WHERE id = pSegmentId
		) THEN
			RAISE EXCEPTION 'Este segmento não existe. Insira um ID válido';
		END IF;

		INSERT INTO programs VALUES (
			DEFAULT, 
			pProgramName, 
			pDescription, 
			pSegmentId);

	EXCEPTION
		WHEN not_null_violation THEN	
			RAISE EXCEPTION 'Não é permitido inserção de valores nulos.';
	END
	$$;

	-- FUNCTION
	-- Tem como parâmetro o id da empresa company) e retorna os responsáveis dela
	CREATE OR REPLACE FUNCTION fn_responsibles_per_company (pCompanyId INTEGER)
	RETURNS TABLE ( email VARCHAR,
					first_name VARCHAR,
					last_name VARCHAR,
					company_id INTEGER
				)
	LANGUAGE plpgsql
	AS $$
	BEGIN
		RETURN QUERY
			SELECT 
				r.email, 
				r.first_name,
				r.last_name,
				r.company_id
			FROM responsibles r
			WHERE r.company_id = pCompanyId;

		IF NOT FOUND THEN
			RAISE EXCEPTION 'Não existe este ID da companhia. Tente um ID válido';
		END IF;

	END;
	$$
