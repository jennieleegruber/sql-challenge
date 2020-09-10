select e.emp_no, last_name, first_name, department_name
from employee e 
inner join dept_emp_forreal def on (e.emp_no = def.emp_no)
left join departments d on (def.dept_no = d.dept_no)
where department_name = 'Sales' or department_name = 'Human Resources';
select last_name, count(emp_no)
from employee
group by last_name
order by last_name desc;