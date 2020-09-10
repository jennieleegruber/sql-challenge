create table employee (
emp_no int primary key, 
emp_title_id varchar(30),
birth_date varchar(64),
first_name varchar(64),
last_name varchar(64),
sex varchar(64), 
hire_date varchar(64)
);
show tables;
select *
from employee;
create table salaries (
emp_no int, 
salary int, 
primary key (emp_no)
);
show tables;
select *
from salaries;
create table departments (
dept_no varchar(30),
department_name varchar(30),
primary key (dept_no)
);
show tables;
create table dept_managers (
dept_no varchar(30),
emp_no int,
primary key (dept_no, emp_no)
);
show tables;
select * 
from dept_managers;
create table titles (
title_id varchar(30), 
title varchar(30), 
primary key (title_id)
);
select * 
from titles;
show tables;
create table dept_emp (
emp_no int,
dept_no varchar(30),
primary key (emp_no)
);
show tables;
select * 
from employee;
show tables;
select * 
from employee 
join dept_managers 
on employee.emp_no = dept_managers.emp_no;
show tables;
show tables;
select *
from departments
join dept_managers
on departments.dept_no = dept_managers.dept_no
order by emp_no;
select dept_no sum(emp_no)
from dept_managers
groupby emp_no;
select *
from employee;
select * 
from dept_managers;
show tables;
drop tables dept_managers;
show tables;
show databases;
show tables;
select *
from employee
where emp_no in (
select emp_no, dept_no
from dept_managers);
select *
from employee
where emp_no in (
select emp_no, dept_no
from dept_managers);
show tables;
# cur.execute("select * from departments join dept_managers on departments.dept_no = dept_managers.dept_no order by emp_no;")
# deptartment_name = []
# emp_no = []
# for row in cur.fetchall():
#     deptartment_name.append(row[1])
#     emp_no.append(row[3])
# q3_3 = {'deptartment_name': deptartment_name,
#        'emp_no': emp_no}
# q3_db_2 = pd.DataFrame(q3_3)
# q3_db_2
select * 
from employee
where emp_no in (
select emp_no, dept_no
from dept_managers);

select dm.dept_no, department_name, dm.emp_no, first_name, last_name
from employee emp
inner join dept_emp dm on(emp.emp_no = dm.emp_no)
inner join departments d on (d.dept_no = dm.dept_no);

select emp_no, last_name, first_name, dept_name
from employee e
left join departments d on (e.emp_no = d.emp_no);departments

create table dept_emp_forreal (
emp_no int primary key, 
dept_no varchar(20)
);
Select e.emp_no, last_name, first_name, department_name
From employee e
inner join dept_emp_forreal de on (e.emp_no = de.emp_no)
left join departments d on (d.dept_no = de.dept_no);
set global max_allowed_packet=10485760;































