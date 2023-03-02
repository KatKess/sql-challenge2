--Query used for #1: List the employee number, last name, first name, sex, and salary of each employee
--The result was 30,0025 rows returned.

select
	e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from "Employees" e
join "Salary" s
on (e.emp_no = s.emp_no)
group by e.emp_no, e.last_name, e.first_name, e.sex, s.salary
order by e.last_name;

--Query used for #2:  List the first name, last name, and hire date for the employees who were hired in 1986.
--The result was 36,149.

select e.first_name, e.last_name, e.hire_date
from "Employees" e
where e.hire_date between '01/01/1986' and '12/31/1986'
group by e.first_name, e.last_name, e.hire_date
order by e.hire_date;

--Query used for #3:  List the manager of each department along with their department number, department name, employee number, last name, and first name.
--The results was 24 rows returned.

select a.emp_no, c.dept_no, c.dept_name, b.last_name, b.first_name
from "Dept_Manager" a 
left join "Employees" b
on (a.emp_no = b.emp_no)
	left join "Departments" as c
	on (a.dept_no = c.dept_no)
	group by a.emp_no, c.dept_no, c.dept_name, b.last_name, b.first_name
	order by c.dept_name;

--Query used for #4:  List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
--The result was 331,604 rows returned.	

select a.dept_no, a.emp_no, b.last_name, b.first_name, c.dept_name
from "Dept_Employees" a
left join "Employees" b
on (a.emp_no = b.emp_no)
	left join "Departments" as c
	on (a.dept_no = c.dept_no)
	group by a.dept_no, a.emp_no, b.last_name, b.first_name, c.dept_name
	order by c.dept_name, b.last_name;

--Query used for #5:  List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
--The result was 20 rows returned.

select a.first_name, a.last_name, a.sex
from "Employees" a
where a.first_name = 'Hercules' 
and a.last_name like 'B%'
group by a.first_name, a.last_name, a.sex
order by a.last_name;

--Query used for #6:  List each employee in the Sales department, including their employee number, last name, and first name.
--The result was 137,952 rows returned.

select * from "Dept_Employees"
where dept_no = 'd007';

select a.emp_no, a.last_name, a.first_name, c.dept_name, c.dept_no
from "Employees" a
left join "Dept_Employees" b
on (a.emp_no = b.emp_no)
	left join "Departments" as c
	on (b.dept_no = c.dept_no)
	where c.dept_name = 'Sales'
	group by a.emp_no, a.last_name, a.first_name, c.dept_name, c.dept_no
	order by a.last_name;

--Query 7:  List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
--The result was 137,953 rows returned.

select * from "Dept_Employees"
where dept_no in('d007','d005');

select a.emp_no, a.last_name, a.first_name, c.dept_name, c.dept_no
from "Employees" a
left join "Dept_Employees" b
on (a.emp_no = b.emp_no)
	left join "Departments" as c
	on (b.dept_no = c.dept_no)
	where c.dept_no in ('d005','d007')
	group by a.emp_no, a.last_name, a.first_name, c.dept_name, c.dept_no
	order by c.dept_name, a.last_name;

--Query 8:  List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
--The result was 1,638 unique last names.

select last_name, COUNT(last_name) as Count
from "Employees"
group by last_name
order by Count desc;

--To check my work, I ran this query next, to make sure I had the counts right. 

select last_name, first_name
from "Employees"
where last_name = 'Baba';
--The answer is 226 employees with the last name 'Baba.'

