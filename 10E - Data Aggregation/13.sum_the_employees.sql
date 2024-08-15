SELECT 
	COUNT(CASE WHEN department_id = 1 THEN 1 END) AS "Engineering",   --if department_id matches, it counts 1;otherwise, it counts nothing.
	COUNT(CASE WHEN department_id = 2 THEN 1 END) AS "Tool Design",
	COUNT(CASE WHEN department_id = 3 THEN 1 END) AS "Sales",
	COUNT(CASE WHEN department_id = 4 THEN 1 END) AS "Marketing",
	COUNT(CASE WHEN department_id = 5 THEN 1 END) AS "Purchasing",
	COUNT(CASE WHEN department_id = 6 THEN 1 END) AS "Research and Development",
	COUNT(CASE WHEN department_id = 7 THEN 1 END) AS "Production"
FROM employees;


--employee_id   department_id
--1	            1
--2	            2
--3	            1
--4	            3
--5	            4
--6	            5
--7             1