module Temperature
  def self.celsius_to_fahrenhit(celsius)
    (celsius *9.0/5.0)+ 32
  end
end
puts Temperature.celsius_to_fahrenhit(25)
