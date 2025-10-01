ALTER TABLE plans
ALTER COLUMN value MONEY NOT NULL

CREATE OR REPLACE FUNCTION fn_functionalities_by_plan(pPlanId INTEGER)
RETURNS TABLE (
    plan_id            INTEGER,
    plan_name          VARCHAR(50),
    plan_value         MONEY,
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