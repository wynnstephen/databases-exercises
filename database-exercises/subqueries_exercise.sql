USE employees;

#1
SELECT *
FROM employees
WHERE emp_no = '101010';


SELECT *
FROM employees
WHERE emp_no IN
      (
          SELECT emp_no
          FROM employees
          Where hire_date = '1990-10-22'
      );


#2

SELECT title
FROM titles
WHERE emp_no IN
      (
          SELECT emp_no
          FROM employees
          WHERE first_name = 'Aamod'
      );

SELECT DISTINCT title
FROM titles
WHERE emp_no IN
      (
          SELECT emp_no
          FROM employees
          WHERE first_name = 'Aamod'
      );

SELECT *
FROM employees
WHERE first_name = 'Aamod';

SELECT *
FROM titles;


#3

SELECT first_name, last_name
FROM employees
WHERE emp_no IN
      (
          SELECT emp_no
          FROM dept_manager
          WHERE gender = 'f'
            AND to_date = '9999-01-01'
      );


SELECT *
FROM employees;

SELECT *
FROM dept_manager;