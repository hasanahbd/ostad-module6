-- Create an 'employees' table
CREATE TABLE employees (
    name VARCHAR(100),
    age INT,
    job_title VARCHAR(100)
);

-- Create a 'departments' table
CREATE TABLE departments (
    department_name VARCHAR(100),
    manager_name VARCHAR(100)
);


-- Insert data into 'employees'
INSERT INTO employees (name, age, job_title) VALUES
('John Doe', 30, 'Software Developer'),
('Jane Smith', 25, 'Graphic Designer'),
('Alice Johnson', 40, 'Project Manager'),
('Mike Brown', 35, 'Marketing Manager');

-- Insert data into 'departments'
INSERT INTO departments (department_name, manager_name) VALUES
('Software Development', 'John Doe'),
('Marketing', 'Mike Brown'),
('Design', 'Jane Smith');


-- Select data from both tables based on the manager's name
SELECT 
    e.name AS employee_name,
    e.job_title,
    d.department_name
FROM 
    employees e
JOIN 
    departments d ON e.name = d.manager_name;