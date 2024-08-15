SELECT 
	capital,
	TRANSLATE(capital, 'áãåçéíñóú', 'aaaceinou') AS translated_name
FROM
	countries;


-- replaces each char in the first string ('áãåçéíñóú') with corresponding char in the second string ('aaaceinou').