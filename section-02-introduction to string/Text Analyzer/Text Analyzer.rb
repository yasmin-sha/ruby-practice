print "Enter a sentence: "
s = gets.chomp.strip.squeeze(" ")

puts "Total characters: #{s.length}"
puts "Total characters (without spaces): #{s.delete(' ').length}"

words = s.split
puts "Total words: #{words.length}"

vowels = s.downcase.count("aeiou")
consonants = s.downcase.count("a-z") - vowels
puts "Vowels: #{vowels}"
puts "Consonants: #{consonants}"

longest = words.max_by { |w| w.length }
puts "Longest word: #{longest}"

puts "Uppercase: #{s.upcase}"
puts "Lowercase: #{s.downcase}"
