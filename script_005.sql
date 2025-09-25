DO $$
BEGIN
    -- Criar tabela payments se não existir
    IF NOT EXISTS (
        SELECT 1 
        FROM information_schema.tables 
        WHERE table_name = 'payments' AND table_schema = 'public'
    ) THEN
        CREATE TABLE payments(
            id SERIAL PRIMARY KEY,
            worker_id INTEGER NULL,
            company_id INTEGER NULL,
            plan_id INTEGER NOT NULL,
            amount DECIMAL NOT NULL,
            paid_date DATE NOT NULL,
            frequency TEXT NOT NULL,
            FOREIGN KEY (worker_id) REFERENCES workers(id),
            FOREIGN KEY (company_id) REFERENCES companies(id),
            FOREIGN KEY (plan_id) REFERENCES plans(id)
        );
    END IF;

    -- Criar tabela program_types se não existir
    IF NOT EXISTS (
        SELECT 1 
        FROM information_schema.tables 
        WHERE table_name = 'program_types' AND table_schema = 'public'
    ) THEN
        CREATE TABLE program_types (
            id SERIAL PRIMARY KEY,
            name VARCHAR(20) NOT NULL
        );
    END IF;

    -- Se a tabela payments existir, remover plan_id de workers e companies
    IF EXISTS (
        SELECT 1 
        FROM information_schema.tables 
        WHERE table_name = 'payments' AND table_schema = 'public'
    ) THEN
        IF EXISTS (
            SELECT 1 
            FROM information_schema.columns 
            WHERE column_name = 'plan_id' AND table_name = 'workers'
        ) THEN
            ALTER TABLE workers DROP COLUMN plan_id;
        END IF;

        IF EXISTS (
            SELECT 1 
            FROM information_schema.columns 
            WHERE column_name = 'plan_id' AND table_name = 'companies'
        ) THEN
            ALTER TABLE companies DROP COLUMN plan_id;
        END IF;
    END IF;

    -- Adicionar program_type_id em programs se não existir
    IF NOT EXISTS (
        SELECT 1 
        FROM information_schema.columns 
        WHERE column_name = 'program_type_id' AND table_name = 'programs'
    ) THEN
        ALTER TABLE programs 
            ADD COLUMN program_type_id INTEGER,
            ADD CONSTRAINT fk_program_type FOREIGN KEY (program_type_id) REFERENCES program_types(id);
    END IF;
END;
$$ LANGUAGE plpgsql;
