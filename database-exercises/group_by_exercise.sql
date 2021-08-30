USE employees;

# Use DISTINCT to find unique titles in the titles table.
SELECT DISTINCT title
FROM titles;


# Query for employees whose last names start and end with 'E', update
# query to find just the unique last names that start and end with
# 'E' using Group By
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
GROUP BY last_name
ORDER BY last_name ASC;


# Update previous version query to now find unique combinations of first and
      # last names that start and end with 'E'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
GROUP BY first_name, last_name;


# Find unique last names with 'q' but not 'qu'
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


# ADD a COUNT() to your results and use ORDER BY to make it easier
# to find employees whose unusual name is shared with others
SELECT COUNT(last_name), last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name ASC;


# Update your query for 'Irena', 'Vidya', or 'Maya'.
      # Use COUNT(*) and GROUP By to find the numbers of employees
      # for each gender with those names
SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;