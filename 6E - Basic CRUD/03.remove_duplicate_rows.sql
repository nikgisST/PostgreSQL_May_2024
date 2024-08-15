SELECT DISTINCT ON (name)
	name,
	area AS area_km2
FROM 
	cities
ORDER BY 
	name DESC;


--DISTINCT ON (name): This clause is used to return only the first row of each set of rows 
--where the column name has the same value. 
--It's a PostgreSQL-specific extension that provides a way to get unique rows based on one or more columns.