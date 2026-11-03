print "Enter a password: "
pass = gets.chomp

puts "Length: #{pass.length}"
puts "Has uppercase? #{pass.match?(/[A-Z]/)}"
puts "Has lowercase? #{pass.match?(/[a-z]/)}"
puts "Has number? #{pass.match?(/[0-9]/)}"
puts "Has special? #{pass.match?(/[^A-Za-z0-9]/)}"

if pass.length >= 8 && pass.match?(/[A-Z]/) && pass.match?(/[a-z]/) && pass.match?(/[0-9]/) && pass.match?(/[^A-Za-z0-9]/)
  puts "Strong password"
elsif pass.length >= 6
  puts "Medium password"
else
  puts "Weak password"
end
