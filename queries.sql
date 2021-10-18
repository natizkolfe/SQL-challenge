SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees AS e
LEFT JOIN salarie AS s
ON e.emp_no = s.emp_no;

SELECT first_name, last_name,hire_date FROM employees
WHERE hire_date BETWEEN '1986/1/1' AND '1986/12/31';


SELECT d.dept_no AS "Department Number",
	d.dept_name AS "Department Name",
	e.emp_no AS "Manager Employee Number",
	e.last_name As "Manager Last Name",
	e.first_name AS "Manager First Name"
FROM departments AS d
LEFT JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
LEFT JOIN employees AS e
ON dm.emp_no = e.emp_no;

SELECT e.emp_no AS "Employee Number",
	e.last_name AS "Employee Last Name",
	e.first_name AS "Employee First NAme",
	d.dept_name AS "Department Name"
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no;


SELECT first_name, last_name,sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


SELECT e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales';

SELECT e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development';

SELECT last_name AS "Employee Last Name", COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;

