SELECT 
	REPLACE(mountain_range, 'a', '@') AS replace_a,   -- replace occurrences of 'a' with '@'
	REPLACE(mountain_range, 'A', '$') AS replace_A    -- replace occurrences of 'A' with '$'
FROM
	mountains;