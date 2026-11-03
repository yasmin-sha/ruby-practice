print "Enter a word or sentence: "
s = gets.chomp.downcase.delete(" ")

rev = s.reverse

puts "Cleaned: #{s}"
puts "Reversed: #{rev}"

if s == rev
  puts "It is a palindrome"
else
  puts "It is not a palindrome"
end
