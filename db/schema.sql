-- DROP TABLES IF THEY EXIST
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS role;
DROP TABLE IF EXISTS department;

-- Create 'department' table
CREATE TABLE IF NOT EXISTS department (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

-- Create 'role' table
CREATE TABLE IF NOT EXISTS role (
  id SERIAL PRIMARY KEY,
  title VARCHAR(30) UNIQUE NOT NULL,
  salary DECIMAL(10, 2) NOT NULL, -- Precise salary with 2 decimal places
  department_id INTEGER NOT NULL REFERENCES department(id) ON DELETE CASCADE -- Enforcing foreign key
);

-- Create 'employee' table
CREATE TABLE IF NOT EXISTS employee (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER NOT NULL REFERENCES role(id) ON DELETE CASCADE, -- Enforcing foreign key
  manager_id INTEGER REFERENCES employee(id) ON DELETE SET NULL -- Handling cascading deletes by setting manager_id to NULL
);
