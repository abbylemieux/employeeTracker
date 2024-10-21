-- Insert initial seed data for 'department'
INSERT INTO department (name) VALUES
    ('Sales'),
    ('Admin'),
    ('IT'),
    ('Service');
ON CONFLICT (name) DO NOTHING;

-- Insert initial seed data for 'role'
INSERT INTO role (title, salary, department_id) VALUES 
    ('Sales', 100000, 1),
    ('Admin', 80000, 2),
    ('IT', 120000, 3),
    ('Service', 80000, 4);
ON CONFLICT (title) DO NOTHING;

-- Insert initial seed data for 'employee'
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
    ('Jake', 'Perulta', 1, NULL),
    ('Amy', 'Santiago', 2, 1),
    ('Rose', 'Diaz', 3, 1),
    ('Charles', 'Boyle', 4, 1),
    ('Raymond', 'Holt', 1, 4),
    ('Terry', 'Jeffords', 2, 4),
    ('Michael', 'Hithcock', 3, 4),
    ('Norm', 'Scully', 4, 4);
ON CONFLICT (first_name, last_name) DO NOTHING;