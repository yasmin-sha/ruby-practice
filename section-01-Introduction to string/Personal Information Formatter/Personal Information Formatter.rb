print "Enter your full name: "
name = gets.chomp.strip.squeeze(" ")

puts "Uppercase: #{name.upcase}"
puts "Lowercase: #{name.downcase}"
puts "Total characters (without spaces): #{name.delete(' ').length}"
puts "Total characters (with spaces): #{name.length}"
puts "First character: #{name[0]}"
puts "Last character: #{name[-1]}"

formatted = name.split.map(&:capitalize).join(" ")
puts "Formatted name: #{formatted}"
