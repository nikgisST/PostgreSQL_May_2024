UPDATE
	employees
SET
	salary = salary + 1500,
	job_title = 'Senior ' || job_title                  --in PostgreSQL, || is the string concatenation operator.
WHERE
	hire_date BETWEEN '1998-01-01' AND '2000-01-05';
