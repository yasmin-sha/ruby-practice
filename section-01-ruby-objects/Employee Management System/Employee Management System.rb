class Employee
  def initialize(name, id, salary)
    @name = name
    @id = id
    @salary = salary
  end

  def display_details
    puts "Name: #{@name}"
    puts "ID: #{@id}"
    puts "Monthly Salary: #{@salary}"
    puts "Annual Salary: #{annual_salary}"
  end

  def annual_salary
    @salary * 12
  end
end

emp1 = Employee.new("ali", 101, 50000)
emp2 = Employee.new("umar", 102, 60000)

employees = [emp1, emp2]

employees.each_with_index do |emp, index|
  puts "Employee #{index + 1}:"
  emp.display_details
  puts "----------------"
end
