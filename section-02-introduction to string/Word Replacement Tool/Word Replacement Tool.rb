print "Enter a paragraph: "
para = gets.chomp

print "Which word to replace? "
old = gets.chomp

print "Replacement word? "
new = gets.chomp

updated = para.gsub(old, new)
puts "Updated paragraph: #{updated}"
