class Account
  attr_reader :name
  attr_reader :balance
  def initialize (name, balance=100)
    @name = name
    @balance = balance
  end

  def display_balance pin_number
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end

  def withdraw pin_number, amount
    if pin == pin_number
      @balance -= amount
      puts "Withdrew #{amount}. New balance: #{@balance}."
    else
    puts pin_error
    end
  end

  private
  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end

checking_account = Account.new("bigG", 1_000_000)

checking_account.display_balance(1233)
