CREATE OR REPLACE PROCEDURE sp_create_responsible(
    p_first_name VARCHAR,
    p_last_name VARCHAR,
    p_email VARCHAR,
    p_company_id INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
	
    INSERT INTO responsibles (first_name, last_name, email, company_id)
    VALUES (p_first_name, p_last_name, p_email, p_company_id);
END;
$$;

CALL sp_create_responsible ('Raissa', 'Arruda', 'trigemeosmatias@gmail.com', 7)


CREATE OR REPLACE FUNCTION fn_functionalities_by_plan(
	p_plan_id INTEGER
	)
RETURNS TABLE (
    functionality_id INTEGER,
    functionality_name VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT f.id, f.name
    FROM functionalities f
    JOIN plan_functionalities pf ON f.id = pf.functionality_id
    WHERE pf.plan_id = p_plan_id;
END;
$$;

SELECT fn_functionalities_by_plan(1)
