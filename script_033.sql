DROP FUNCTION fn_goals_by_worker(INTEGER);

CREATE OR REPLACE FUNCTION fn_goals_by_worker(pWorkerId INTEGER)
RETURNS TABLE (
    goal_id          INTEGER,
    goal_name        VARCHAR(50),
    goal_description VARCHAR(50),
    program          INTEGER,
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
        ge.program_id AS program,
        wg.completed  AS completed
    FROM 
        goals g
    JOIN worker_goals wg ON g.id = wg.goal_id
    WHERE wg.worker_id = pWorkerId;
END;
$$;

DROP FUNCTION fn_average_progress_percentage(INTEGER);

CREATE OR REPLACE FUNCTION fn_average_progress_percentage(pCompanyId INTEGER)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    v_average DECIMAL;
BEGIN
    IF NOT EXISTS(SELECT 1 FROM companies WHERE id = pCompanyId) THEN
        RAISE EXCEPTION 'Erro: company_id inválido';
    END IF;

    SELECT 
        COALESCE(AVG(p.progress_percentage)::DECIMAL, 0)
    INTO v_average
    FROM progresses p
    JOIN worker_programs wp ON p.worker_program_id = wp.id
    JOIN workers w ON w.id = wp.worker_id
    WHERE w.company_id = pCompanyId;

    RETURN v_average;
END;
$$;

DROP FUNCTION fn_finished_goals_percentage(INTEGER);

CREATE OR REPLACE FUNCTION fn_finished_goals_percentage(pCompanyId INTEGER)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    v_percentage DECIMAL;
BEGIN
    IF NOT EXISTS(SELECT 1 FROM companies WHERE id = pCompanyId) THEN
        RAISE EXCEPTION 'Erro: company_id inválido';
    END IF;

    SELECT 
        COALESCE(
            (COUNT(*) FILTER (WHERE wg.completed = TRUE) * 100 / NULLIF(COUNT(*), 0)),
            0
        )::DECIMAL
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

    SELECT COALESCE( s.name, 0 )
    INTO v_segment
    FROM goals g
    JOIN programs p ON p.id = g.program_id
    JOIN segments s ON s.id = p.segment_id
    WHERE g.id = pGoalId;

    RETURN v_segment;
END;
$$;
