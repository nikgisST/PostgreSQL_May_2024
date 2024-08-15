CREATE TABLE logs (
	id SERIAL PRIMARY KEY,
	account_id INT,
	old_sum NUMERIC(20, 4),
	new_sum NUMERIC(20, 4)
);

CREATE OR REPLACE FUNCTION 
	trigger_fn_insert_new_entry_into_logs()
RETURNS TRIGGER 
AS
$$
BEGIN
	INSERT INTO 
		logs(account_id, old_sum, new_sum)
	VALUES
		(
			OLD.id, OLD.balance, NEW.balance   -- OLD and NEW are special, reserved keywords used within trigger functions
	    );
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_account_balance_change
AFTER UPDATE OF
	balance   -- this is the field
ON 
	accounts  -- this is the table
FOR EACH ROW
WHEN 
	(NEW.balance <> OLD.balance)
EXECUTE FUNCTION 
	trigger_fn_insert_new_entry_into_logs();

	