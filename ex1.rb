class BankAccount

attr_reader :balance, :interest_rate
  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
    @amount = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance = balance*(1+@interest_rate)
  end

end

# Create a BankAccount class
# Every bank account should have balance, interest_rate,
# and `` attributes
#
# At this point you should test out creating an instance of
#  your class to make sure it works
#
# Your class should have an instance method called deposit
# that accents one amount argument and adds that amount to the total balance
#
# Test out your method by calling it on an instance of your
# class
#
# There should be a withdraw instance method that accents
# one amount argument and subtracts it from the total balance
# Don't forget to test it out!
# Finally, there should be a gain_interest instance method
# that increases the total balance according to the interest rate.
