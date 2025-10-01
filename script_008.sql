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
    LEFT JOIN 
        progresses p ON w.id = p.worker_id
    WHERE w.company_id = pCompanyId
    GROUP BY 
        w.id, w.name, w.email
    ORDER BY 
        total_points DESC;
END;
$$;


CREATE OR REPLACE FUNCTION fn_functionalities_by_plan(pPlanId INTEGER)
RETURNS TABLE (
    plan_id            INTEGER,
    plan_name          VARCHAR(50),
    plan_value         DECIMAL,
    functionality_id   INTEGER,
    functionality_name VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.id    AS plan_id,
        p.name  AS plan_name,
        p.value AS plan_value,
        f.id    AS functionality_id,
        f.name  AS functionality_name
    FROM 
        functionalities f
    JOIN plan_functionalities pf ON f.id = pf.functionality_id
    JOIN plans p ON p.id = pf.plan_id
    WHERE p.id = pPlanId;
END;
$$;


ALTER TABLE goals
ADD COLUMN completed BOOLEAN NOT NULL DEFAULT false;

ALTER TABLE goals 
ADD COLUMN program_id INTEGER;

ALTER TABLE goals
ADD FOREIGN KEY (program_id) REFERENCES programs(id);

ALTER TABLE goals
ADD COLUMN company_id INTEGER;

ALTER TABLE goals 
ADD FOREIGN KEY (company_id) REFERENCES companies(id);

ALTER TABLE goals 
DROP CONSTRAINT goals_worker_program_id_fkey;


CREATE TABLE worker_goals (
    id SERIAL NOT NULL,
    worker_id INTEGER NOT NULL,
    goal_id INTEGER NOT NULL,
    FOREIGN KEY (worker_id) REFERENCES workers(id),
    FOREIGN KEY (goal_id) REFERENCES goals(id),
    PRIMARY KEY (id)
);
