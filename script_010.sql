ALTER TABLE goals
DROP COLUMN completed;

ALTER TABLE worker_goals
ADD COLUMN completed BOOLEAN NOT NULL DEFAULT false;

CREATE OR REPLACE FUNCTION fn_goals_by_worker(pWorkerId INTEGER)
RETURNS TABLE (
    goal      VARCHAR(50),
    completed BOOLEAN
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        g.description AS goal,
        wg.completed  AS completed
    FROM 
        goals g
    JOIN worker_goals wg ON g.id = wg.goal_id
    WHERE wg.worker_id = pWorkerId;
END;
$$;
