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
        g.program_id  AS program,
        wg.completed  AS completed
    FROM 
        goals g
    JOIN worker_goals wg ON g.id = wg.goal_id
    WHERE wg.worker_id = pWorkerId;
END;
$$;

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
    JOIN progresses pr ON pr.worker_program_id = wp.id
    WHERE p.id = pCompanyId
    GROUP BY 
        p.id, p.name, p.description, 
        s.id, s.name, i.image_url;
END;
$$;
