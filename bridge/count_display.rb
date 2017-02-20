require './display'

class CountDisplay < Display
  def initialize(imp)
    super(imp)
  end

  def multi_display(num)
    open
    num.times { print }
    close
  end
end
