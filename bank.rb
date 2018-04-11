# Bank Account class
class BankAccount
  def initialize(balance)
    @balance = balance
  end

  def menu
    loop do
      print "Select an operation\n1: Withdraw\n2: Deposit\n3: Check balance\n4:Exit\n"
      option = gets.chomp
      if option == '1'
        puts 'Enter amount to withdraw'
        withdraw_amount = gets.chomp.to_i
        puts "You have withdraw #{withdraw_amount}. New balance is: " + withdraw(withdraw_amount).to_s
      elsif option == '2'
        puts 'Enter amount to deposit'
        deposit_amount = gets.chomp.to_i
        puts "You have deposited #{deposit_amount}. Your new balance is: " + deposit(deposit_amount).to_s
      elsif option == '3'
        puts 'Your balance is: ' + check_balance.to_s
      elsif option == '4'
        exit
      else
        print 'Enter a valid option'
      end
    end
  end

  def withdraw(amount)
    @balance -= amount
  end

  def deposit(amount)
    @balance += amount
  end

  def check_balance
    @balance
  end
end

user = BankAccount.new(0)

user.menu
