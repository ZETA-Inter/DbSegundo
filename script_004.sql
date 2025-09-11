-- Log de alterações em WORKERS
CREATE TABLE workers_log (
    log_id SERIAL PRIMARY KEY,
    worker_id INTEGER,
    action_type VARCHAR(10),      -- INSERT, UPDATE, DELETE
    old_data JSONB,
    new_data JSONB,
    changed_at TIMESTAMP DEFAULT now()
);

-- Log de alterações em COMPANIES
CREATE TABLE companies_log (
    log_id SERIAL PRIMARY KEY,
    company_id INTEGER,
    action_type VARCHAR(10),      -- INSERT, UPDATE, DELETE
    old_data JSONB,
    new_data JSONB,
    changed_at TIMESTAMP DEFAULT now()
);

CREATE TABLE daily_activity (
    activity_date DATE PRIMARY KEY,
    dau_count     INTEGER NOT NULL DEFAULT 0
);


CREATE OR REPLACE FUNCTION trg_workers_log()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO workers_log (worker_id, action_type, new_data)
        VALUES (NEW.id, TG_OP, row_to_json(NEW)::jsonb);
        RETURN NEW;
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO workers_log (worker_id, action_type, old_data, new_data)
        VALUES (NEW.id, TG_OP, row_to_json(OLD)::jsonb, row_to_json(NEW)::jsonb);
        RETURN NEW;
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO workers_log (worker_id, action_type, old_data)
        VALUES (OLD.id, TG_OP, row_to_json(OLD)::jsonb);
        RETURN OLD;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tg_workers_audit
AFTER INSERT OR UPDATE OR DELETE ON workers
FOR EACH ROW EXECUTE FUNCTION trg_workers_log();


CREATE OR REPLACE FUNCTION trg_companies_log()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO companies_log (company_id, action_type, new_data)
        VALUES (NEW.id, TG_OP, row_to_json(NEW)::jsonb);
        RETURN NEW;
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO companies_log (company_id, action_type, old_data, new_data)
        VALUES (NEW.id, TG_OP, row_to_json(OLD)::jsonb, row_to_json(NEW)::jsonb);
        RETURN NEW;
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO companies_log (company_id, action_type, old_data)
        VALUES (OLD.id, TG_OP, row_to_json(OLD)::jsonb);
        RETURN OLD;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tg_companies_audit
AFTER INSERT OR UPDATE OR DELETE ON companies
FOR EACH ROW EXECUTE FUNCTION trg_companies_log();


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
           SELECT COUNT(DISTINCT p.worker_id)
           FROM progresses p
           WHERE p.date = NEW.date
       )
     WHERE d.activity_date = NEW.date;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tg_update_dau
AFTER INSERT ON progresses
FOR EACH ROW
EXECUTE FUNCTION trg_update_dau();





