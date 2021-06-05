-- Deliverable #1.1. 
-- Create a table with ee#, first & last name, title, from date, & to date
-- This table will be a list of current employees born between 1/1/1952-12/31/1955
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM retirement_titles

-- Deliverable #1.2.
-- Partition the data to show only most unique title per employee

SELECT emp_no,
 first_name,
 last_name,
 title
INTO unique_titles
FROM
 (SELECT emp_no,
 first_name,
 last_name,
 title,
 to_date, ROW_NUMBER() OVER
 (PARTITION BY (emp_no)
 ORDER BY to_date DESC) rn
 FROM retirement_titles
 ) tmp WHERE rn = 1
ORDER BY emp_no;

-- group by title to show how many of each title will retire 
SELECT COUNT(unique_titles.emp_no), unique_titles.title
INTO retiring_titles
FROM unique_titles
GROUP BY unique_titles.title;


