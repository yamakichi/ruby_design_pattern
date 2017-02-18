module Framework
  class Factory
    def create(owner)
      @product = create_product(owner)
      register_product(@product)
      @product
    end

    def create_product(owner)
      raise NotImplementedError
    end

    def register_product(product)
      raise NotImplementedError
    end
  end
end
