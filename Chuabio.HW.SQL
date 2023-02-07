# 1) Write SQL Code to count the number of employees – 1 pts
SELECT Count(emp_no)
from employees;
# 2) Write SQL Code to output the current name of all of the departments -2 pts
SELECT (dept_name)
from departments;
# 3) How many employees are in Finance? -2 pts
SELECT count(emp_no)
from dept_emp
WHERE dept_no = 'd002';
# 4) How many women work in development? – 3 pts
SELECT count(gender)
FROM employees
INNER JOIN dept_emp ON employees.emp_no= dept_emp.emp_no
WHERE dept_no = 'd005' and gender = 'F';
# 5) What is the top salary in the company? 3 pts
SELECT max(salary)
from salaries;
# 6) What is the average salary for Marketing? 4 pts
SELECT avg( salary )
from dept_emp
INNER JOIN salaries ON dept_emp.emp_no = salaries.emp_no
WHERE dept_no = 'd001';

# 7) What is the lowest salary in the company, who is it and what is their title and department? 5 pts
SELECT *
FROM employees
INNER JOIN  salaries ON employees.emp_no = salaries.emp_no
INNER JOIN titles ON salaries.emp_no = titles.emp_no
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
ORDER BY salary;
# ans : olivera Baek , salary of $38623 , technique leader , department production

# 8) Who is the oldest person at the company and what is their age? 5 pts
SELECT birth_date, first_name, last_name
FROM employees
ORDER BY birth_date;

# 1952-02-01 about 71 years old " Eshiro Kuzuoka , Jouni Pocchiola, Kiyokazu Whitecomb, ronghao Schaad , Moni decaestecker

