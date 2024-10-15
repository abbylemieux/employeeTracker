-- Insert initial seed data for 'department'
INSERT INTO department (name)
VALUES ('Engineering'),
       ('Finance'),
       ('Legal'),
       ('Sales');

-- Insert initial seed data for 'role'
INSERT INTO role (title, salary, department_id)
VALUES ('Software Engineer', 100000, 1),
       ('Accountant', 80000, 2),
       ('Lawyer', 120000, 3),
       ('Sales Lead', 80000, 4);

-- Insert initial seed data for 'employee'
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('John', 'Doe', 1, NULL),
       ('Mike', 'Chan', 2, 1),
       ('Ashley', 'Rodriguez', 3, 1),
       ('Kevin', 'Tupik', 4, 1),
       ('Kunal', 'Singh', 1, 4),
       ('Malia', 'Brown', 2, 4),
       ('Tom', 'Allen', 3, 4),
       ('Tanya', 'Adams', 4, 4);