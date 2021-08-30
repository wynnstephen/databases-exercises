USE adoptioncenter;



CREATE TABLE IF NOT EXISTS animals (
                                       animal_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                       name VARCHAR(50),
    type  VARCHAR(100) NOT NULL,
    age INT,
    size TEXT,
    is_adoptable TINYINT(1), #where 0 is false and 1 is true
    is_cute TINYINT(1),
    PRIMARY KEY (animal_id)
    );

INSERT INTO animals(name, type, age, size, is_adoptable, is_cute) VALUES
('Fritz', 'dog', 16, 'medium', 0, 1),
('Shiner', 'dog', 10, 'big', 0, 1),
('Instance', 'fish', 1, 'tiny', 0, 0),
('Rosie', 'cat', 4, 'fat', 0, 1),
('Bear', 'gerbil', 2, 'small', 1,1),
('mocha', 'cat', 3, 'small', 1,1),
('espresso', 'dog', 5, 'medium', 1, 0),
('champ', 'ferret', 3, 'big', 1, 0),
('pinky', 'dog', 5, 'small', 0,1),
('chazzy', 'dog', 10, 'small', 1, 0),
('rutger', 'dog', 8, 'big', 0,1);

SELECT * FROM adoptionCenter.animals;

# WHERE Clause

SELECT name, type FROM animals WHERE type = 'dog';

# WHERE - BETWEEN
SELECT name, age FROM animals WHERE age > 5 OR age <10;
SELECT name, age FROM animals WHERE age BETWEEN 5 AND 10;
SELECT name, type FROM animals WHERE type BETWEEN 'dog' AND 'parrot';

# WHERE - LIKE

SELECT name FROM animals WHERE name LIKE '%y'; # pulls animals ending with y

# animals whose type of animal has an r in it

SELECT name FROM animals WHERE type LIKE '%r';

# WHERE -DISTINCT : allow us to avoid duplicates

SELECT DISTINCT name FROM animals WHERE type = 'dog';

# this will pull up all the distinct names as long as the animal is a dog



#WHERE - IN


















