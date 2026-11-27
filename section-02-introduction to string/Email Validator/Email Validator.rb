print "Enter your email: "
email = gets.chomp.strip.downcase

puts "Email: #{email}"
puts "Has @? #{email.include?("@")}"
puts "Has domain? #{email.include?(".")}"

if email.include?("@") && email.include?(".")
  puts "Email looks valid"
else
  puts "Email looks invalid"
end
