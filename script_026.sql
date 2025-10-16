CREATE OR REPLACE FUNCTION fn_get_workers_ranking(pCompanyId INTEGER)
RETURNS TABLE (
    rank_position BIGINT,
    worker_id INTEGER,
    worker_name VARCHAR(255),
    total_points BIGINT,
    worker_email VARCHAR(255)
) 
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        ROW_NUMBER() OVER (ORDER BY COALESCE(SUM(p.points), 0) DESC) as rank_position,
        w.id as worker_id,
        w.name as worker_name,
        COALESCE(SUM(p.points), 0) as total_points,
        w.email as worker_email
    FROM 
        workers w
    JOIN 
        worker_programs wp ON wp.worker_id = w.id
    LEFT JOIN 
        progresses p ON wp.id = p.worker_program_id
    WHERE w.company_id = pCompanyId
    GROUP BY 
        w.id, w.name, w.email
    ORDER BY 
        total_points DESC;
END;
$$;