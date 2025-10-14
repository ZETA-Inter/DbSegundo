CREATE OR REPLACE FUNCTION trg_update_dau()
RETURNS TRIGGER AS $$
BEGIN
    -- Garante que existe registro do dia na tabela
    INSERT INTO daily_activity (activity_date, dau_count)
    VALUES (NEW.date, 0)
    ON CONFLICT (activity_date) DO NOTHING;

    -- Atualiza o DAU recalculando os workers distintos do dia
    UPDATE daily_activity d
       SET dau_count = (
           SELECT COUNT(DISTINCT wp.worker_id)
           FROM progresses p
                JOIN worker_programs wp ON wp.id = p.worker_program_id
           WHERE p.date = NEW.date
       )
     WHERE d.activity_date = NEW.date;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;