print "Enter first number: "
a = gets.chomp.to_i

print "Enter second number: "
b = gets.chomp.to_i

if a > b
  puts "#{a} is greater"
elsif b > a
  puts "#{b} is greater"
else
  puts "Both are equal"
end

def check(num)
  if num > 0
    "positive"
  elsif num < 0
    "negative"
  else
    "zero"
  end
end

puts "First number is #{check(a)}"
puts "Second number is #{check(b)}"
