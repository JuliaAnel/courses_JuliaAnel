

create table employees (
id serial primary key, 
employee_name varchar (50) not null
);

insert into employees (id, employee_name)
values (default, 'Julia');

--=====================================

create table salary (
id serial primary key,
monthly_salary int not null
);

insert into salary (id, monthly_salary)
values (default, 1000);

insert into salary (id, monthly_salary)
values (default, 1100);

insert into salary (id, monthly_salary)
values (default, 1200);

insert into salary (id, monthly_salary)
values (default, 1300);

insert into salary (id, monthly_salary)
values (default, 1400);

insert into salary (id, monthly_salary)
values (default, 1500);

insert into salary (id, monthly_salary)
values (default, 1600);

insert into salary (id, monthly_salary)
values (default, 1700);

insert into salary (id, monthly_salary)
values (default, 1800);

insert into salary (id, monthly_salary)
values (default, 1900);

insert into salary (id, monthly_salary)
values (default, 2000);

insert into salary (id, monthly_salary)
values (default, 2100);

insert into salary (id, monthly_salary)
values (default, 2200);

insert into salary (id, monthly_salary)
values (default, 2300);

insert into salary (id, monthly_salary)
values (default, 2400);

insert into salary (id, monthly_salary)
values (default, 2500);

--=============================

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary (id, employee_id, salary_id)
values (default, 99, 16
);

--=============================

create table roles (
id serial primary key, 
role_name int not null unique
);
alter table roles 
alter column role_name type varchar (30)
using role_name::varchar(30);

insert into roles (id, role_name)
values (default, 'Senior Automation QA engineer');

--==============================

create table roles_employee (
id serial primary key, 
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees (id),
foreign key (role_id)
references roles (id)
);

insert into roles_employee (id, employee_id, role_id)
values (default, 56, 14);


