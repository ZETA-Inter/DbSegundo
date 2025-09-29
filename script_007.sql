CREATE OR REPLACE FUNCTION fn_get_workers_ranking()
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
    LEFT JOIN 
        progresses p ON w.id = p.worker_id
    GROUP BY 
        w.id, w.name, w.email
    ORDER BY 
        total_points DESC;
END;
$$;