require './framework/product'

class IdCard < Framework::Product
  attr_accessor :owner

  def initialize(owner)
    puts "#{owner}のカードを作ります。"
    @owner = owner
  end

  def use
    puts "#{owner}のカードを使います。"
  end
end
