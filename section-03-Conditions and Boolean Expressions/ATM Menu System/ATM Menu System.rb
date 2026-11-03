balance = 1000

loop do
  puts "ATM Menu"
  puts "1. Check Balance"
  puts "2. Deposit"
  puts "3. Withdraw"
  puts "4. Exit"
  print "Enter option: "
  option = gets.chomp.to_i

  if option == 1
    puts "Balance: #{balance}"
  elsif option == 2
    print "Enter deposit amount: "
    amount = gets.chomp.to_f
    balance = balance + amount
    puts "New balance: #{balance}"
  elsif option == 3
    print "Enter withdraw amount: "
    amount = gets.chomp.to_f
    if amount > balance
      puts "Not enough balance!"
    else
      balance = balance - amount
      puts "New balance: #{balance}"
    end
  elsif option == 4
    puts "bye"
    break
  else
    puts "Wrong choice!"
  end
end
