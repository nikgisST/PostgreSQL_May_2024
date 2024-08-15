SELECT
	tablename,      -- name of the table for which the index is defined
	indexname,      
	indexdef        -- definition of the index, which includes the SQL command used to create it
FROM 
	pg_indexes      -- pg_indexes system catalog
WHERE
	schemaname = 'public'
ORDER BY
	tablename,
	indexname;


-- reviewing index usage and structure within a database schema