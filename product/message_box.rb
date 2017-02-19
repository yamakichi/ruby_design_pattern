class MessageBox < Product
  def initialize(decochar)
    @decochar = decochar
  end

  def use(s)
    length = s.length.to_i
    length.times { print decochar }
    print ""
    print "#{decochar} '' #{s} '' #{decochar}"
    length.times { print decochar }
    print ""
  end

  def create_clone
    product = null
  end
end
