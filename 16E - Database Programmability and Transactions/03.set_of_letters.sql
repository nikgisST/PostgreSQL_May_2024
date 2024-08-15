CREATE OR REPLACE FUNCTION fn_is_word_comprised (
	set_of_letters VARCHAR(50),
	word VARCHAR(50)
) RETURNS BOOLEAN
AS 
$$
BEGIN
	RETURN TRIM(LOWER(word), LOWER(set_of_letters)) = '';
END;
$$
LANGUAGE plpgsql;



-- in this context TRIM (not function as intended) checks if word can be constructed from set_of_letters
-- function returns TRUE if the result of the TRIM operation is an empty string (''), 
-- which means that all characters in word can be matched with set_of_letters