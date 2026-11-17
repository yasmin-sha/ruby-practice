require 'date'
module Wheather
  def self.will_it_rain_on(date)
    "it depend"
  end
end
puts Wheather.will_it_rain_on(Date.today)
