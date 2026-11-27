3.times do |i|
  print "username: "
  username = gets.chomp

  print "password: "
  password = gets.chomp

  if username == "admin" && password == "1234"
    puts "login successfully"
    break
  else
    puts "wrong attempt #{i+1}"
  end

  puts "blocked" if i == 2
end
