CREATE OR REPLACE FUNCTION fn_functionalities_by_plan( pPlanId INTEGER )
RETURNS TABLE ( plan_id            INTEGER
              , plan_name          VARCHAR(50)
              , plan_value         DECIMAL
              , functionality_id   INTEGER
              , functionality_name VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT p.id, p.name, p.value, f.id, f.name
    FROM functionalities f
    JOIN plan_functionalities pf ON f.id = pf.functionality_id
    JOIN plans p ON p.id = pf.plan_id
    WHERE p.id = pPlanId;
END;
$$;
