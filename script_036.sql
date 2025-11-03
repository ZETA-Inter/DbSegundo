ALTER TABLE progresses
ALTER COLUMN date 
TYPE **TIMESTAMP(6)**
USING **date**::TIMESTAMP(6);

CREATE OR REPLACE FUNCTION fn_workers_by_program(pCompanyId INTEGER)
RETURNS TABLE (program INTEGER, worker_count INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM companies WHERE id = pCompanyId) THEN
        RAISE EXCEPTION 'Erro: company_id inválido';
    END IF;

    RETURN QUERY
    SELECT wp.program_id as program
         , COUNT(wp.id)::INTEGER as worker_count
      FROM worker_programs wp
           JOIN workers w ON w.id = wp.worker_id 
     WHERE w.company_id = pCompanyId
     GROUP BY wp.program_id;
END;
$$;

CREATE OR REPLACE FUNCTION trg_update_dau()
RETURNS TRIGGER AS $$
BEGIN
    -- Garante que existe registro do dia na tabela
    INSERT INTO daily_activity (activity_date, dau_count)
    VALUES (NEW.date::date, 0)
    ON CONFLICT (activity_date) DO NOTHING;

    -- Atualiza o DAU recalculando os workers distintos do dia
    UPDATE daily_activity d
       SET dau_count = (
           SELECT COUNT(DISTINCT wp.worker_id)
           FROM progresses p
                JOIN worker_programs wp ON wp.id = p.worker_program_id
           WHERE p.date = NEW.date::date
       )
     WHERE d.activity_date = NEW.date::date;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;