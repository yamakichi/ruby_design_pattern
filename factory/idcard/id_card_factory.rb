require './framework/product'
require './framework/factory'
require './idcard/id_card'

class IdCardFactory < Framework::Factory
  attr_accessor :owners

  def initialize
    @owners = []
  end

  def create_product(owner)
    IdCard.new(owner)
  end

  def register_product(product)
    @owners.push(product)
  end
end
