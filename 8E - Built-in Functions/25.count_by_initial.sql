SELECT
	LEFT(first_name, 2) AS initials,
	COUNT('initials') AS user_count
FROM
	users
GROUP BY
	initials              -- Al: Alice and Alan both start with "Al". There are 2 users with these initials
ORDER BY
	user_count DESC,
	initials;