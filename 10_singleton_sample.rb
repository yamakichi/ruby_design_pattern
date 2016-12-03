require 'singleton'

class SingletonObject
  # instanceメソッドが定義され、newメソッドがprivateになる
  include Singleton
  attr_accessor :counter

  def initialize
    @counter = 0
  end
end

obj1 = SingletonObject.instance
obj1.counter += 1
puts(obj1.counter)
# 1

obj2 = SingletonObject.instance
obj2.counter += 1
puts(obj1.counter)
# 2

obj3 = SingletonObject.new
#=> private method `new` called for SingletonObject:Class (NoMethodError)
# ↑ newでのインスタンスの生成に失敗
