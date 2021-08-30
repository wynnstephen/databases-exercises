USE employees;


# Find all employees with the first name of Irena, Vidya, or Maya using IN
SELECT first_name
FROM giemployees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# Find all employees with the last name that starts with 'E'
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

# Find all employees with the last name that contains a 'q' in it
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';


# Find all employees with the first name of Irena, Vidya, or Maya using OR
SELECT first_name
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';


# Find all empoyees with the first name of Irena, Vidya, or Maya and are male
SELECT *
FROM employees
WHERE gender = 'M'
  AND (
            first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya'
    );


# Find all employees with a last name that starts or ends with an 'e'
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e';


# Find all employees with a last name that starts and ends with an 'e'
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';


# Find all employees with the last name that have 'q' but NOT 'qu' in their name

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';


SELECT * FROM employees;


# Sort employee by First name
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC;


SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC, last_name ASC;


# Sort by last name in ASC order and first name in DESC order
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name DESC;

# Sort the employees with 'E' in their last name and ordered by
# their employee number
SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no ASC;


# Reverse the sort order
SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;