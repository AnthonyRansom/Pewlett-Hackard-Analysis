-- Delvirable 1
-- View data in employees table
SELECT emp_no, first_name, last_name
FROM employees;

-- View data in titles table
SELECT title, from_date, to_date
FROM titles;

--Create retirement_titles to hold data of title for all staff retiring
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS t
	ON (e.emp_no = t.emp_no)
WHERE e.birth_date >= '1952-01-01' AND e.birth_date <= '1955-12-31'
ORDER BY e.emp_no;
-- View data in retirement_titles table
SELECT * FROM retirement_titles;


-- Use Distinct with Orderby to remove duplicate rows
-- create unique_titles table to be used to get a count of each unique title
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;
-- View data in unique_titles table
select * from unique_titles;

-- Get a count of each unique title and create a new table
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;
--View result in retiring_titles table
SELECT * FROM retiring_titles;


-- Deliverable 2
-- Create table of all staff that are eligible for mentorship
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	d.from_date,
	d.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS d 
	ON (e.emp_no = d.emp_no)
	INNER JOIN titles AS t 
	ON (e.emp_no = t.emp_no)
WHERE d.to_date = '9999-01-01'
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY emp_no;
--View date of mentorship_eligibility table
SELECT * FROM mentorship_eligibility;