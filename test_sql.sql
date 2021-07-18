CREATE TABLE bears (
id INTEGER PRIMARY KEY,
name TEXT,
age INTEGER,
sex TEXT,
color TEXT,
temperament TEXT,
alive INTEGER
);

sqlite3 brs.db

.headers on 
.mode column

SELECT * FROM bears;

DROP TABLE bears;

-- selects_all_female_bears_return_name_and_age GROUP BY temperament 
SELECT name, age FROM bears WHERE sex = 'F';
SELECT name FROM bears ORDER BY name;
SELECT name, age FROM bears WHERE alive = 1 
  ORDER BY age;

/* shouldn't it be alive or oldest bear that ever lived? 
SELECT name, age FROM bears WHERE alive = 1
  ORDER BY age DESC LIMIT 1;
*/
SELECT name, age FROM bears 
  ORDER BY age DESC LIMIT 1;

SELECT name, age FROM bears 
  ORDER BY age LIMIT 1;

-- selects_most_prominent_color_and_returns_with_count
SELECT color, COUNT(color) FROM bears 
  GROUP BY color ORDER BY COUNT(color) DESC 
  LIMIT 1;

-- counts_number_of_bears_with_goofy_temperaments
SELECT COUNT(temperament) FROM bears 
  WHERE temperament = "goofy" 
  ;

-- selects_bear_that_killed_Tim
SELECT id FROM bears 
  WHERE name = "Wendy" 
  ;
