select "Employees".emp_no, last_name, first_name, sex, salary
from "Employees" join "Salaries" on
	"Employees".emp_no = "Salaries".emp_no

select first_name, last_name, hire_date
from "Employees"
where hire_date >= '1-1-1986' and hire_date <= '12-31-1986'

select "Departments".dept_no, dept_name, first_name, last_name, "Dept_Manager".emp_no
from "Departments" 
	left join "Dept_Manager" on "Departments".dept_no = "Dept_Manager".dept_no
	left join "Employees" on "Dept_Manager".emp_no = "Employees".emp_no
	
select "Employees".emp_no, last_name, first_name, "Departments".dept_no, dept_name
from "Employees"
	inner join "Dept_Emp" on "Employees".emp_no = "Dept_Emp".emp_no
	inner join "Departments" on "Dept_Emp".dept_no = "Departments".dept_no
	
select first_name, last_name, sex
from "Employees"
where first_name like 'Hercules' and last_name like 'B%'

select "Employees".emp_no, last_name, first_name, dept_name
from "Employees"
	inner join "Dept_Emp" on "Employees".emp_no = "Dept_Emp".emp_no
	inner join "Departments" on "Departments".dept_no = "Dept_Emp".dept_no
where dept_name like 'Sales' or dept_name like 'Development'

select last_name, count(last_name)
from "Employees"
group by last_name
order by count(last_name) desc
