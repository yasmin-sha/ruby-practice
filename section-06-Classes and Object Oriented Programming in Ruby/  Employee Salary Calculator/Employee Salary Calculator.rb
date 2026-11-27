class Employee
  def initialize(name,salary)
    @name=name
    @salary=salary
  end
  def annual_salary
    @salary*12
  end
  def display
    puts "#{@name}:#{@salary} annual salary"
  end
  e1=Employee.new("ali",30000)
  e2=Employee.new("umar",500000)
   e1.display
   e2.display
