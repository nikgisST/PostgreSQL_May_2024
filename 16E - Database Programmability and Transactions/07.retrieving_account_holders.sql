CREATE OR REPLACE PROCEDURE
	sp_retrieving_holders_with_balance_higher_than(
		searched_balance NUMERIC
	)
AS 
$$
DECLARE
	holder_info RECORD;  --type RECORD, variable hold each row of the query results one at a time during iteration
BEGIN
	FOR holder_info IN 
		SELECT
			ah.first_name || ' ' || ah.last_name AS full_name,
			SUM(balance) AS total_balance
		FROM
			account_holders AS ah
		JOIN
			accounts AS a
		ON
			a.account_holder_id = ah.id
		GROUP BY
			full_name
		HAVING
			SUM(balance) > searched_balance
		ORDER BY
			full_name
	LOOP              -- for each row RAISE NOTICE statement outputs a message with format: full_name - total_balance
		RAISE NOTICE '% - %.', holder_info.full_name, holder_info.total_balance;  -- RAISE NOTICE is a way to print messages to the console or log
	END LOOP;
END;
$$
LANGUAGE plpgsql;


CALL sp_retrieving_holders_with_balance_higher_than(200000);   -- Alice Smith - 250000