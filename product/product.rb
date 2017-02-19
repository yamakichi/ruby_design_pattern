class Product
  def use
    raise NotImplementedError
  end

  def self.create_clone
    raise NotImplementedError
  end
end
