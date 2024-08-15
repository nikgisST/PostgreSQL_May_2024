SELECT 
	population,
	LENGTH(CAST(population AS VARCHAR)) AS length   -- converts the population numeric value to a string
FROM
	countries