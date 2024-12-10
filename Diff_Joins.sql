CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO employees (first_name, last_name, department_id, salary)
VALUES
('John', 'Doe', 1, 50000),
('Jane', 'Smith', 2, 60000),
('Emily', 'Davis', 1, 70000),
('Michael', 'Johnson', 3, 80000),
('Sarah', 'Brown', 2, 75000);



CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100)
);
INSERT INTO departments (department_name)
VALUES
('Sales'),
('Marketing'),
('IT'),
('HR');

SELECT * FROM sqlpractice.employees;
SELECT * FROM sqlpractice.departments;

select e.employee_id,e.salary from employees e 
inner join departments d on e.department_id=d.department_id;
select e.employee_id,e.salary from employees e 
left join departments d on e.department_id=d.department_id;
select e.employee_id,e.salary from employees e 
right join departments d on e.department_id=d.department_id;
select e.employee_id,e.salary from employees e 
cross join departments d on e.department_id=d.department_id;
select e.employee_id,e.salary from employees e 
join departments d on e.department_id=d.department_id;
