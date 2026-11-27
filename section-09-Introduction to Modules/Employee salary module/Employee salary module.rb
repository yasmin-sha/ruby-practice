module Salarycalculation
  def annual_sal
    @month_sal*12
  end
end
class Teacher
  include Salarycalculation
  def initialize(month_sal)
    @month_sal=month_sal
  end
end
class Developer
  include Salarycalculation
  def initialize(month_sal)
    @month_sal=month_sal
  end
end
t=Teacher.new(50000)
puts t.annual_sal
d=Developer.new(70000)
puts d.annual_sal
