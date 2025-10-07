CREATE OR REPLACE FUNCTION fn_plan_values(pPlanId INTEGER)
RETURNS TABLE (
    month_value    INTEGER,
    semester_value INTEGER,
    year_value     INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.value                 AS month_value,
        round(p.value * 5.5, 2) AS semester_value,
        round(p.value * 10, 2)  AS year_value
    FROM 
        plans p
    WHERE
        p.id = pPlanid;
END;
$$;