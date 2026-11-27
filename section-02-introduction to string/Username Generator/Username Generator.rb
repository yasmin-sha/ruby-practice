print "Enter your first name: "
first = gets.chomp.strip

print "Enter your last name: "
last = gets.chomp.strip

full = first + last
username = full.downcase.delete(" ")
username = username + rand(100).to_s

puts "Generated username: #{username}"
