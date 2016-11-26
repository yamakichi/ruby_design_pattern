require "etc"

class BankAccount
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance += amount
  end
end

class BankAccountProxy
  def initialize(real_object, owner_name)
    @real_object = real_object
    @owner_name = owner_name
  end

  # method_missingを用いてdeposit, withdrawを省略
  def method_missing(name, *args)
    check_access
    @real_object.send(name, *args)
  end

  def check_access
    if(Etc.getlogin != @owner_name)
      raise "Illegal access: #{@owner_name} cannot access account."
    end
  end
end

account = BankAccount.new(100)

proxy = BankAccountProxy.new(account, "login_user")
puts proxy.deposit(50)
puts proxy.withdraw(10)

