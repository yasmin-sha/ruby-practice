class BankAccount
  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def deposit(amount)
    @balance = @balance + amount
    puts "#{amount} deposited. New balance: #{@balance}"
  end

  def withdraw(amount)
    if amount > @balance
      puts "Not enough balance! Available: #{@balance}, Tried: #{amount}"
    else
      @balance = @balance - amount
      puts "#{amount} withdrawn. New balance: #{@balance}"
    end
  end

  def display_balance
    puts "Account Holder: #{@name}"
    puts "Current Balance: #{@balance}"
  end
end

account1 = BankAccount.new("ali", 1000)
puts "balance................."
account1.display_balance
puts "................"
account1.deposit(500)
puts "................"
account1.withdraw(300)
puts "................"
account1.withdraw(2000)

account1.display_balance
