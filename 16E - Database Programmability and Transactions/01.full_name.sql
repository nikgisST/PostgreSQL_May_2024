CREATE OR REPLACE FUNCTION fn_full_name (
	first_name VARCHAR(50),
	last_name VARCHAR(50)
) RETURNS VARCHAR(101)
AS
$$              -- delimiter symbols used to define the start and end of the function's paragraph
DECLARE 
	full_name VARCHAR(101);   -- mentioned here because it will be used in function BEGIN/END body
BEGIN
	full_name := INITCAP(LOWER(first_name)) || ' ' || INITCAP(LOWER(last_name));  --Nikoleta Nikolova
	RETURN full_name; -- full_name is not really needed
END;
$$
LANGUAGE plpgsql;  --specifies the function is written in PL/pgSQL, is Postgresql procedural language for writing functions
