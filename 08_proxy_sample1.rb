# etcはRubyの標準ライブラリ
require "etc"


# 防御Proxy
# 「特定の関心事」を代理オブジェクトに分離させることができる
#
# 銀行の入出金業務を行う(対象オブジェクト/subject)
class BankAccount
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  # 入金
  def deposit(amount)
    @balance += amount
  end

  # 出金
  def withdraw(amount)
    @balance -= amount
  end
end

# ユーザーログインを担当する防御Proxy
class BankAccountProxy
  def initialize(real_object, owner_name)
    @real_object = real_object
    @owner_name = owner_name
  end

  def balance
    check_access
    @real_object.balance
  end

  def deposit(amount)
    check_access
    @real_object.deposit(amount)
  end

  def withdraw(amount)
    check_access
    @reak_object.withdraw(amount)
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

