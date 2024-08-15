SELECT
	id,
	CONCAT_WS(  
		' ',
		first_name,
		middle_name,
		last_name
	) AS full_name,
	hire_date
FROM 
	employees
ORDER BY
	hire_date
OFFSET 9;



--CONCAT does not insert any separators between the concatenated strings unless you include them explicitly as arguments.
--CONCAT_WS includes a separator between each non-null argument, specified as the first argument.


--CONCAT treats NULL as an empty string.
--CONCAT_WS skips NULL values entirely and does not include the separator for those.
