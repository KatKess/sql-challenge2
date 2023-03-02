select a.emp_no, c.dept_no, c.dept_name, b.last_name, b.first_name
from "Dept_Manager" a 
left join "Employees" b
on (a.emp_no = b.emp_no)
	left join "Departments" as c
	on (a.dept_no = c.dept_no)
	group by a.emp_no, c.dept_no, c.dept_name, b.last_name, b.first_name
	order by c.dept_name;