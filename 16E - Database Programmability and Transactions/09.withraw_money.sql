CREATE OR REPLACE PROCEDURE sp_withdraw_money(
	account_id INT,
	money_amount NUMERIC(4)
)
AS 
$$
DECLARE
	current_balance NUMERIC;
BEGIN
	current_balance := (SELECT balance FROM accounts WHERE id = account_id);  --operator is used for assignment-assigns a value to a variable
	
	IF money_amount <= current_balance THEN
		UPDATE
			accounts
		SET 
			balance = balance - money_amount
		WHERE 
			id = account_id;
	ELSE
		RAISE NOTICE 'Insufficient balance to withdraw %', money_amount;
	END IF;
END;
$$
LANGUAGE plpgsql;