-- USE codeup_test_db;
--
-- # CRUD
--
-- # READ -> SELECT
--
-- SELECT * #what do I want?
-- FROM employees #where should I get it?

SELECT first_name, last_name, gender #what do I want
FROM employees; #where should I get it?
WHERE first_name = 'Kyoichi' #how should I filiter the data?
  AND last_name = 'Decaestecker';
  AND gender = 'M';

SELECT * FROM titles;

# if (first_name === 'Kyoichi' && last_name === 'Decaestecker')

