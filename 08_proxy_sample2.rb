
# 仮想Proxy
# 「BankAccountインスタンスの生成タイミング」という関心ごとを分離

class BankAccount
  attr_reader :balance
  def initialize(balance)
    puts "BankAccountを生成しました"
    @balance = balance
  end

  # 入金
  def deposit(amount)
    @balance = amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

# BankAccountの生成を遅らせる仮想Proxy
class VirtualAccountProxy
  def initialize(starting_balance)
    puts "VirtualAccountProxyを生成しました。BankAccountはまだ生成していません。"
    @starting_balance = starting_balance
  end

  def balance
    subject.balance
  end

  def deposit(amount)
    subject.deposit(amount)
  end

  def withdraw(amount)
    subject.withdraw(amount)
  end

  def announce
    "Virtual Account Proxyが担当するアナウンスです"
  end

  def subject
    @subject || @subject = BankAccount.new(@starting_balance)
  end
end

proxy = VirtualAccountProxy.new(100)

puts proxy.announce

puts proxy.deposit(50)

puts proxy.withdraw(10)
