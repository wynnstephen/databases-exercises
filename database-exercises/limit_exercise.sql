USE employees;

SELECT DISTINCT title FROM titles;

# List the first 10 distinct last name sorted in DESC order
SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
    LIMIT 10;

# Query to get the top 5 salaries and display only employee number
SELECT emp_no FROM salaries
ORDER BY salary DESC
    LIMIT 5;

# Update the previous query to find the 10th page of results
SELECT emp_no FROM salaries
ORDER BY salary DESC
    LIMIT 4 OFFSET 46;