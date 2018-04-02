-- заполняем таблицу - developers
INSERT INTO developers (name, age, sex)
  VALUE
  ('gena', '52', '1'),
  ('misha', '18', '1'),
  ('serega', '32', '1'),
  ('sveta', '25', '0'),
  ('denis', '99', '1');
  
-- заполняем таблицу - skills
INSERT INTO skills (name, year_foundation, author)
  VALUE
  ('c++', '1983' , 'Bjarne Stroustrup'),
  ('java', '1995', 'James Gosling'),
  ('c#', '2000', 'Anders Hejlsberg'),
  ('lisp', '1958', 'John McCarthy');
  
-- заполняем таблицу - projects
INSERT INTO projects (name, pr_level)
  VALUE
  ('aircraft', '10'),
  ('car', '8'),
  ('motorcycle', '6'),
  ('Kick scooter', '2'),
  ('rollers', '1');
  
-- заполняем таблицу - companies
INSERT INTO companies (name, capitalization, founder)
  VALUE
  ('asus', '14', 'Jonney Shih'),
  ('dell', '59', 'Michael Dell'),
  ('lenovo', '43', 'Liu Chuanzhi'),
  ('sony', '294', 'Akio Morita'),
  ('apple', '60', 'Steve Jobs');
  
-- заполняем таблицу - customers
INSERT INTO customers (name, capitalization, founder)
  VALUE
  ('Bayerische Motoren Werke AG', '9', 'Karl Rapp'),
  ('Mercedes-Benz', '10', '	Karl Benz'),
  ('Renault S. A.', '5', 'Louis Renault');  

-- заполняем таблицу - developers_projects
INSERT INTO developers_projects (developer_id, project_id)
  VALUE
  (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (3, 5),
  (3, 1),
  (4, 2),
  (4, 3),
  (5, 4),
  (5, 5);
  
-- заполняем таблицу - developers_skills
INSERT INTO developers_skills (developer_id, skill_id)
  VALUE
  (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (3, 1),
  (3, 2),
  (4, 3),
  (4, 4),
  (5, 1),
  (5, 2); 

-- заполняем таблицу - companies_projects
INSERT INTO companies_projects (company_id, project_id)
  VALUE
  (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (3, 5),
  (3, 2),
  (4, 3),
  (4, 4),
  (5, 5),
  (5, 1);
  
-- заполняем таблицу - customers_projects
INSERT INTO customers_projects (customer_id, project_id)
  VALUE
  (1, 1),
  (2, 2),
  (3, 3),
  (1, 4),
  (2, 5),
  (3, 2),
  (1, 3),
  (2, 4),
  (3, 5),
  (1, 1);


