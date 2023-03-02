select
e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from "Employees" e
join "Salary" s
on (e.emp_no = s.emp_no)
group by e.emp_no, e.last_name, e.first_name, e.sex, s.salary
order by e.last_name;

select e.first_name, e.last_name, e.hire_date
from "Employees" e
where e.hire_date between '01/01/1986' and '12/31/1986'
group by e.first_name, e.last_name, e.hire_date
order by e.hire_date;

select a.emp_no, c.dept_no, c.dept_name, b.last_name, b.first_name
from "Dept_Manager" a 
left join "Employees" b
on (a.emp_no = b.emp_no)
	left join "Departments" as c
	on (a.dept_no = c.dept_no)
	group by a.emp_no, c.dept_no, c.dept_name, b.last_name, b.first_name
	order by c.dept_name;

select a.dept_no, a.emp_no, b.last_name, b.first_name, c.dept_name
from "Dept_Employees" a
left join "Employees" b
on (a.emp_no = b.emp_no)
	left join "Departments" as c
	on (a.dept_no = c.dept_no)
	group by a.dept_no, a.emp_no, b.last_name, b.first_name, c.dept_name
	order by c.dept_name, b.last_name; 
	
select a.first_name, a.last_name, a.sex
from "Employees" a
where a.first_name = 'Hercules' 
and a.last_name like 'B%'
group by a.first_name, a.last_name, a.sex
order by a.last_name;
	

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


select last_name, COUNT(last_name) as Count
from "Employees"
group by last_name
order by Count desc;

select last_name, first_name
from "Employees"
where last_name = 'Baba';








