 module CalculatorExtension
    def self.extended(object)
      puts "calculator module has been extended"
    end
  end
  class Students
    extend CalculatorExtension
  end
