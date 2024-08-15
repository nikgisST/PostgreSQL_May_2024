SELECT
	continent_name,
	TRIM(TRAILING FROM continent_name) AS "trim"    -- remove trailing spaces from the continent_name column
	-- RTRIM(continent_name) AS "trim" -- same thing as the upper solution
FROM
	continents;