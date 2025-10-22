CREATE OR REPLACE FUNCTION trg_delete_goal()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'DELETE' THEN
        DELETE FROM worker_goals WHERE goal_id = OLD.id;
        RETURN NULL;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tg_delete_goal
AFTER DELETE ON goals
FOR EACH ROW EXECUTE FUNCTION trg_delete_goal();
