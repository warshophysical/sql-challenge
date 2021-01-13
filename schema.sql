create table titles(
	title_id varchar(10) primary key not null,
	title varchar(30) not null)
	;
select * from titles
	
create type gender AS ENUM ('M', 'F','Not Mentioned');


create table employees(
	emp_no int primary key,
	emp_title_id varchar(10),
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex gender default 'Not Mentioned',
	hire_date date,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id))
	;
	
select * from employees

create table salaries(
	emp_no int not null,
	salary float,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no))
	;
	
create table departments(
	dept_no varchar(10) primary key not null,
	dept_name varchar(20) not null
);


create table dept_manager(
	dept_no varchar(10),
	emp_no int,
	unique(dept_no,emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no))
	;


create table dept_emp(
	emp_no int,
	dept_no varchar(10),
	unique(emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));




select * from employees
