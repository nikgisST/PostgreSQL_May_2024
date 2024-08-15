SELECT
	CONCAT(
		m.mountain_range,
		' ',
		p.peak_name
	) AS mountain_information,
	CHAR_LENGTH(                                    -- calculates the number of characters in a string
		CONCAT(m.mountain_range, ' ', p.peak_name)
	) AS characters_length,
	BIT_LENGTH(                                     -- calculates the number of bits in the string
		CONCAT(m.mountain_range, ' ', p.peak_name)
	) AS bits_of_a_string
FROM
	mountains AS m,
	peaks AS p
WHERE
	m."id" = p.mountain_id;     -- "id" automatically converted to lowercase
	                            -- id   case-sensitive and must be referenced exactly as created