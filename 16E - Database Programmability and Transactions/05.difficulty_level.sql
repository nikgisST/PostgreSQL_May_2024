CREATE OR REPLACE FUNCTION fn_difficulty_level (
	level INT
) RETURNS VARCHAR(50)
AS
$$
DECLARE 
	difficulty_level VARCHAR(50);  -- mentioned here because it will be used in function BEGIN/END body
BEGIN
	IF level <= 40 THEN
		difficulty_level := 'Normal Difficulty';
	ELSIF level BETWEEN 41 AND 60 THEN
		difficulty_level := 'Nightmare Difficulty';
	ELSE
		difficulty_level := 'Hell Difficulty';
	END IF;
	
	RETURN difficulty_level;
END;
$$
LANGUAGE plpgsql;


SELECT 
	user_id, 
	level, 
	cash,
	fn_difficulty_level(level)
FROM
	users_games
ORDER BY
	user_id;	
	