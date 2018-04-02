-- создаём базу данных
CREATE SCHEMA lerning_db;

-- создаём таблицу - developers
CREATE TABLE developers (
id int primary key auto_increment,
name varchar(200),
age int,
sex TINYINT);

-- создаём таблицу - skills
CREATE TABLE skills (
id int primary key auto_increment,
name varchar(200),
year_foundation int,
author varchar(200));

-- создаём таблицу - projects
CREATE TABLE projects (
id int primary key auto_increment,
name varchar(200),
pr_level int);

-- создаём таблицу - companies
CREATE TABLE companies (
id int primary key auto_increment,
name varchar(200),
capitalization int,
founder varchar(200));

-- создаём таблицу - customers
CREATE TABLE customers (
id int primary key auto_increment,
name varchar(200),
capitalization int,
founder varchar(200));

-- создаём таблицу связи many to many - developers_projects
CREATE TABLE developers_projects (developer_id int, project_id int,
primary key (developer_id, project_id),
CONSTRAINT fk_id_developer_project FOREIGN KEY (developer_id) REFERENCES developers (id),
CONSTRAINT fk_id_project_developer FOREIGN KEY (project_id) REFERENCES projects (id));

-- создаём таблицу связи many to many - developers_skills
CREATE TABLE developers_skills (developer_id int, skill_id int,
primary key (developer_id, skill_id),
CONSTRAINT fk_id_developer_skill FOREIGN KEY (developer_id) REFERENCES developers (id),
CONSTRAINT fk_id_skill_developer FOREIGN KEY (skill_id) REFERENCES skills (id));

-- создаём таблицу связи many to many - companies_projects
CREATE TABLE companies_projects (company_id int, project_id int,
CONSTRAINT fk_id_company_project FOREIGN KEY (company_id) REFERENCES companies (id),
CONSTRAINT fk_id_project_company FOREIGN KEY (project_id) REFERENCES projects (id));

-- создаём таблицу связи many to many - customers_projects
CREATE TABLE customers_projects (customer_id int, project_id int,
CONSTRAINT fk_id_customer_project FOREIGN KEY (customer_id) REFERENCES customers (id),
CONSTRAINT fk_id_project_customer FOREIGN KEY (project_id) REFERENCES projects (id));







