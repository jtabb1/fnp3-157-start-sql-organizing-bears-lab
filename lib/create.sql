-- the original solution passes all tests
CREATE TABLE bears (
id INTEGER PRIMARY KEY,
name TEXT,
age INTEGER,
sex TEXT,
color TEXT,
temperament TEXT,
alive INTEGER
);

-- the official solution works also:
/*
CREATE TABLE bears (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER,
  sex CHAR(1),
  color TEXT,
  temperament TEXT,
  alive BOOLEAN
);
*/