class Manager
  def initialize
    @showcase = Hash.new
  end

  def register(name, proto)
    @showcase[name] = proto
  end

  def create(protoname)
    product = @showcase[protoname]
    product.create_clone
  end
end
