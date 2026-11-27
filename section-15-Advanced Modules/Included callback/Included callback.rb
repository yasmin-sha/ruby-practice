module LoggerModule
    def self.included(base)
      puts "LoggerModule is included in #{base}"
    end
  end
  class Students 
    include LoggerModule
  end
