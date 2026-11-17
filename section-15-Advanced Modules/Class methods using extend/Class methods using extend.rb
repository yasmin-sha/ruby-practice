module CalculatorMethods
  def add(a,b)
    a+b
  end
end
class Calculator
  extend CalculatorMethods
end
puts Calculator.add(10,29)
