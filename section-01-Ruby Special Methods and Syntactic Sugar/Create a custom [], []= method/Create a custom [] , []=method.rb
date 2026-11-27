class Student
  def initialize
    @info = {
      name: "Ali",
      age: 20,
      course: "Ruby",
      marks: 85
    }
  end

  # For reading: student[:name]
  def [](key)
    @info[key]
  end

  # For writing/updating: student[:age] = 22
  def []=(key, value)
    @info[key] = value
  end

  # To print all info
  def display
    puts @info
  end
end

# Create object
student = Student.new

# Print before
puts "Before: #{student[:age]}"  # => 20

# Change the student's age
student[:age] = 22

# Print the updated information
puts "After: #{student[:age]}"   # => 22
student.display
