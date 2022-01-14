```ruby

README.md

Iteration 1
Use TDD to create an Employee class that responds to the following interaction pattern:

pry(main)> require './lib/employee'
# => true

pry(main)> bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
# => #<Employee:0x00007fdfd48af848...>

pry(main)> bobbi.name
# => "Bobbi Jaeger"

pry(main)> bobbi.age
# => 30

pry(main)> bobbi.salary
# => 100000
Iteration 2
Use TDD to create a Department class that responds to the following interaction pattern:

pry(main)> require './lib/department'
# => true

pry(main)> require './lib/employee'
# => true

pry(main)> customer_service = Department.new("Customer Service")    
# => #<Department:0x00007fce46993d58...>

pry(main)> customer_service.name
# => "Customer Service"

pry(main)> customer_service.employees
# => []

pry(main)> bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
# => #<Employee:0x00007fce46194788...>

pry(main)> aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})  
# => #<Employee:0x00007fce46a610a0...>

pry(main)> customer_service.hire(bobbi)

pry(main)> customer_service.hire(aaron)    

pry(main)> customer_service.employees
# => [#<Employee:0x00007fce46194788...>, #<Employee:0x00007fce46a610a0...>]

pry(main)> customer_service.expenses
# => 0

pry(main)> customer_service.expense(100)

pry(main)> customer_service.expense(25)    

pry(main)> customer_service.expenses
# => 125
```
Iteration 3

You have been contracted by the State of Colorado to create a software system that can track its yearly budgets. Specifically, they would like you to implement the following functionality:

1. Each budget has a year, as well as a way to read that data
2. A budget can list all of its departments
3. A budget can list all departments with expenses less than $500
4. A budget can list all employees' salaries

Build upon your code from the first two iterations to complete this task.
