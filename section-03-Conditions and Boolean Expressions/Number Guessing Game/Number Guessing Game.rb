secret = 7
attempts = 0

loop do
  print "Guess the number: "
  guess = gets.chomp.to_i
  attempts = attempts + 1

  if guess == secret
    puts "Correct! Attempts: #{attempts}"
    break
  elsif guess > secret
    puts "Too high"
  else
    puts "Too low"
  end
end
