-CREATE OR REPLACE FUNCTION fn_goals_by_worker(pWorkerId INTEGER)
RETURNS TABLE (
    goal_id          INTEGER,
    goal_name        VARCHAR(50),
    goal_description VARCHAR(50),
    completed        BOOLEAN
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        g.id          AS goal_id,
        g.name        AS goal_name,
        g.description AS goal_description,
        wg.completed  AS completed
    FROM 
        goals g
    JOIN worker_goals wg ON g.id = wg.goal_id
    WHERE wg.worker_id = pWorkerId;
END;
$$;


CREATE OR REPLACE PROCEDURE sp_create_goal(
      pCompanyId   INTEGER,
      pDescription VARCHAR,
      pName        VARCHAR,
      pProgramId   INTEGER DEFAULT NULL
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM companies WHERE id = pCompanyId) THEN
        RAISE EXCEPTION 'Erro: company_id inválido';
    END IF;

    IF pProgramId IS NOT NULL THEN
        IF NOT EXISTS (SELECT 1 FROM programs WHERE id = pProgramId) THEN
            RAISE EXCEPTION 'Erro: program_id inválido';
        END IF;

        IF NOT EXISTS (
            SELECT 1
            FROM worker_programs wp
            JOIN workers w ON w.id = wp.worker_id
            WHERE w.company_id = pCompanyId 
              AND wp.program_id = pProgramId
        ) THEN
            RAISE EXCEPTION 'Erro: não existem produtores com esse curso';
        END IF;
    END IF;

    IF EXISTS (
        SELECT 1
        FROM goals
        WHERE description = pDescription
          AND company_id = pCompanyId
          AND name = pName
    ) THEN
        RAISE EXCEPTION 'Erro: não é possível criar uma meta com descrição e nome iguais a uma meta pré-existente';
    END IF;

    IF pProgramId IS NULL THEN
        INSERT INTO goals (company_id, description, name)
        VALUES (pCompanyId, pDescription, pName);
    ELSE
        INSERT INTO goals (company_id, description, program_id, name)
        VALUES (pCompanyId, pDescription, pProgramId, pName);
    END IF;
END;
$$;

CREATE OR REPLACE FUNCTION fn_average_progress_percentage(pCompanyId INTEGER)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    v_average INT;
BEGIN
    IF NOT EXISTS(SELECT 1 FROM companies WHERE id = pCompanyId) THEN
        RAISE EXCEPTION 'Erro: company_id inválido';
    END IF;

    SELECT 
        COALESCE(AVG(p.progress_percentage)::INT, 0)
    INTO v_average
    FROM progresses p
    JOIN worker_programs wp ON p.worker_program_id = wp.id
    JOIN workers w ON w.id = wp.worker_id
    WHERE w.company_id = pCompanyId;

    RETURN v_average;
END;
$$;

CREATE OR REPLACE FUNCTION fn_average_points_by_company(pCompanyId INTEGER)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    v_average INT;
BEGIN
    IF NOT EXISTS(SELECT 1 FROM companies WHERE id = pCompanyId) THEN
        RAISE EXCEPTION 'Erro: company_id inválido';
    END IF;

    SELECT 
        COALESCE(AVG(p.points)::INT, 0)
    INTO v_average
    FROM progresses p
    JOIN worker_programs wp ON p.worker_program_id = wp.id
    JOIN workers w ON w.id = wp.worker_id
    WHERE w.company_id = pCompanyId;

    RETURN v_average;
END;
$$;


CREATE OR REPLACE FUNCTION fn_finished_goals_percentage(pCompanyId INTEGER)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    v_percentage INT;
BEGIN
    IF NOT EXISTS(SELECT 1 FROM companies WHERE id = pCompanyId) THEN
        RAISE EXCEPTION 'Erro: company_id inválido';
    END IF;

    SELECT 
        COALESCE(
            (COUNT(*) FILTER (WHERE wg.completed = TRUE) * 100 / NULLIF(COUNT(*), 0)),
            0
        )::INT
    INTO v_percentage
    FROM goals g
    JOIN worker_goals wg ON g.id = wg.goal_id
    WHERE g.company_id = pCompanyId;

    RETURN v_percentage;
END;
$$;


CREATE OR REPLACE FUNCTION fn_segment_by_goal(pGoalId INTEGER)
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
DECLARE
    v_segment VARCHAR;
BEGIN
    IF NOT EXISTS(SELECT 1 FROM goals WHERE id = pGoalId) THEN
        RAISE EXCEPTION 'Erro: goal_id inválido';
    END IF;

    SELECT s.name
    INTO v_segment
    FROM goals g
    JOIN programs p ON p.id = g.program_id
    JOIN segments s ON s.id = p.segment_id
    WHERE g.id = pGoalId;

    RETURN v_segment;
END;
$$;
