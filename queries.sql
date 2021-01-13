-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select e.emp_no, e.last_name, e.first_name,e.sex,s.salary from employees as e 
	join salaries as s on e.emp_no=s.emp_no
		order by s.salary desc
			
-- 2. List first name, last name, and hire date for employees who were hired in 1986.


select first_name, last_name,hire_date from employees
	where hire_date between '1996-01-01' and '1996-12-31'
		order by hire_date asc
		
-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

select d.dept_no,d.dept_name,e.emp_no,e.last_name,e.first_name from employees as e
	join dept_manager as m on e.emp_no=m.emp_no
		join departments as d on m.dept_no=d.dept_no
			order by last_name asc
			
-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

select e.emp_no,e.last_name,e.first_name,d.dept_name from employees as e
	join dept_manager as m on e.emp_no=m.emp_no
		join departments as d on m.dept_no=d.dept_no
		
--5. List first name, last name, and sex for employees whose 
-- first name is "Hercules" and last names begin with "B."

select first_name,last_name,sex from employees
	where first_name='Hercules' and last_name like 'B%'
	
-- 6. List all employees
-- in the Sales department, including their employee number, last name, first name, and department name.

select e.emp_no,e.last_name,e.first_name,d.dept_name from employees as e
	join dept_manager as m on e.emp_no=m.emp_no
		join departments as d on m.dept_no=d.dept_no
			where d.dept_name='Sales'
	
-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

select e.emp_no,e.last_name,e.first_name,d.dept_name from employees as e
	join dept_manager as m on e.emp_no=m.emp_no
		join departments as d on m.dept_no=d.dept_no
			where d.dept_name='Sales' or d.dept_name='Development'


-- 8. In descending order, list the frequency count of employee last names, i.e., 
-- how many employees share each last name.

select last_name, count(last_name) as frequencies from employees
	group by last_name
		order by frequencies desc, last_name asc


			
