def calculate_average(mark1, mark2, mark3)
  total = mark1 + mark2 + mark3

  average = total / 3.0

  average
end

def check_result(average)
  if average >= 50
    return "Pass"
  end

  "Fail"
end

marks = calculate_average(80, 70, 90)

puts "Average: #{marks}"
puts "Result: #{check_result(marks)}"

Multiple parameters

def add(a,b)
  a+b
end
puts add(5,8)
