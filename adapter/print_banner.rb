require './banner'

class PrintBanner
  attr_accessor :banner

  def initialize
    @banner = Banner.new("hoge")
  end

  def print_week
    raise NotImplementedError
  end

  def print_strong
    raise NotImplementedError
  end
end
