#184. Department Highest Salary

Select Distinct d.name as Department, 
                e.name as Employee, 
                e.salary as Salary 
                FROM employee e, department d, (select max(e.salary) as maxSalary, e.departmentId as departmentId 
                                                from employee e group by e.departmentId) s 
                                                WHERE e.departmentId = d.id and e.salary= s.maxSalary and e.departmentId = s.departmentId;
