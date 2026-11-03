students = ["ali", "sara", "ahmed"]

puts "Students: #{students}"

print "Search: "
name = gets.chomp

if students.include?(name)
  puts "found"
else
  puts "not found"
end

present = 0
absent = 0

for s in students
  print "#{s} present? (y/n): "
  ans = gets.chomp
  if ans == "y"
    present = present + 1
  else
    absent = absent + 1
  end
end

puts "Present: #{present}"
puts "Absent: #{absent}"
