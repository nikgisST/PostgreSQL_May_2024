CREATE OR REPLACE PROCEDURE sp_transfer_money(
	sender_id INT,
	receiver_id INT,
	amount NUMERIC(4)
)
AS 
$$
DECLARE
	current_balance NUMERIC;     -- declare variables that will be used within the procedure
BEGIN
	CALL sp_withdraw_money(sender_id, amount);    -- calls another procedure
	CALL sp_deposit_money(receiver_id, amount);   -- calls another procedure
	
	SELECT balance INTO current_balance FROM accounts WHERE id = sender_id;  -- select into:assign the result of a query to a variable
	
	IF current_balance < 0 THEN
		ROLLBACK;         -- undoes all changes made during this transaction
	END IF;
END;
$$
LANGUAGE plpgsql;