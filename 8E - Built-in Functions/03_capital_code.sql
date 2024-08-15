ALTER TABLE 
	countries
ADD COLUMN
	capital_code CHAR(2);
	
UPDATE 
	countries
SET 
	capital_code = SUBSTRING(capital FROM 1 FOR 2) -- SUBSTRING(capital, 1, 2)  --> 1: starting position of the substring (1-based index).
RETURNING *;                                                                    --> 2: is the length of the substring, 


--SUBSTRING function to extract the first two characters 
--from the capital column and assigns that value to the capital_code