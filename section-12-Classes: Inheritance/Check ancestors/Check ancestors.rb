class Vechile
    def start
        puts "Vechile started"
    end
end
    class Car<Vechile
    end
    car=Car.new
    car.start
    
    class Bike<Car
    end
    puts "bike ancestors....."
    print Bike.ancestors
    puts Bike.ancestors.include?(Vechile)
       
