SELECT 
	(REGEXP_MATCHES("River Information", '[0-9]{1,4}'))[1] AS river_length  -- extracting a sequence of 1 to 4 digits for river length, from its column 
FROM 
	view_river_info;
	

-- Does the same thing   
-- SELECT 
-- 	SUBSTRING("River Information", '[0-9]{1,4}') AS river_length
-- FROM 
-- 	view_river_info;