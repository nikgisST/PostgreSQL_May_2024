CREATE VIEW
	view_initials
AS
SELECT
	SUBSTRING(first_name, 1, 2) AS initial,     -- It extracts 2 characters from the first position of first_name
	last_name
FROM
	employees
ORDER BY
	last_name;
	