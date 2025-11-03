CREATE OR REPLACE FUNCTION fn_programs_in_progress(pCompanyId INTEGER)
RETURNS TABLE (
    id                  INTEGER,
    name                VARCHAR(50),
    description         VARCHAR(50),
    segment_id          INTEGER,
    segment_name        VARCHAR(50),
    image_url           VARCHAR(255),
    progress_percentage DECIMAL
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.id AS id,
        p.name AS name,
        p.description AS description,
        s.id AS segment_id,
        s.name AS segment_name,
        i.image_url AS image_url,
        ROUND(AVG(pr.progress_percentage), 2)::DECIMAL AS progress_percentage
    FROM programs p
    JOIN segments s ON s.id = p.segment_id
    LEFT JOIN images i 
        ON i.origin_table = 'programs' 
       AND i.source_id = p.id
    JOIN worker_programs wp ON wp.program_id = p.id
    JOIN workers w ON w.id = wp.worker_id
    JOIN progresses pr ON pr.worker_program_id = wp.id
    WHERE w.company_id = pCompanyId
    GROUP BY 
        p.id, p.name, p.description, 
        s.id, s.name, i.image_url;
END;
$$;

DROP FUNCTION fn_finished_goals_percentage(INTEGER);

CREATE OR REPLACE FUNCTION fn_finished_goals_total_goals(pCompanyId INTEGER)
RETURNS TABLE (total_goals INTEGER, completed_goals DECIMAL)
LANGUAGE plpgsql
AS $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM companies WHERE id = pCompanyId) THEN
        RAISE EXCEPTION 'Erro: company_id inválido';
    END IF;

    RETURN QUERY
    SELECT COALESCE(COUNT(g.*), 0) as total_goals,
        COALESCE(
            COUNT(*) FILTER (WHERE wg.completed = TRUE),
            0
        )::INTEGER as completed_goals
    FROM goals g
    JOIN worker_goals wg ON g.id = wg.goal_id
    WHERE g.company_id = pCompanyId;

END;
$$;