SELECT
	LTRIM(peak_name, 'M') AS left_trim,       --  remove all leading 'M' characters from the peak_name column
	RTRIM(peak_name, 'm') AS right_trim       --  remove all trailing 'm' characters from the peak_name column
FROM
	peaks;