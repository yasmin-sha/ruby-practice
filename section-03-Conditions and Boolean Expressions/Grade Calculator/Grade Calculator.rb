print "Enter marks: "
marks = gets.chomp.to_i

if marks < 0 || marks > 100
  puts "Invalid marks! Must be 0-100"
elsif marks >= 90
  puts "Pass - Grade A"
elsif marks >= 80
  puts "Pass - Grade B"
elsif marks >= 70
  puts "Pass - Grade C"
elsif marks >= 60
  puts "Pass - Grade D"
elsif marks >= 50
  puts "Pass - Grade E"
else
  puts "Fail - Grade F"
end
