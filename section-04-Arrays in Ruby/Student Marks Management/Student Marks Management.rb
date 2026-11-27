marks = [78, 45, 32, 90, 67, 55, 39, 82, 48, 70]

puts "Marks: #{marks}"

total = marks.sum
average = total / 10.0

puts "Total: #{total}"
puts "Average: #{average}"
puts "Highest: #{marks.max}"
puts "Lowest: #{marks.min}"

passed = marks.count { |m| m >= 40 }
failed = 10 - passed

puts "Passed: #{passed}"
puts "Failed: #{failed}"
