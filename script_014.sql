-- Filtro para Company
CREATE OR REPLACE FUNCTION fn_goals_by_company(pCompanyId INTEGER)
RETURNS TABLE (
    goal       VARCHAR(50),
    program_id INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        g.description AS goal,
        g.program_id  AS program_id
    FROM 
        goals g
    WHERE g.company_id = pCompanyId;
END;
$$;

-- Filtro para Company e Program

CREATE OR REPLACE FUNCTION fn_goals_by_company(pCompanyId INTEGER, pProgramId INTEGER)
RETURNS TABLE (
    goal       VARCHAR(50),
    program_id INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        g.description AS goal,
        g.program_id  AS program_id
    FROM 
        goals g
    WHERE g.company_id = pCompanyId AND g.program_id = pProgramId;
END;
$$;