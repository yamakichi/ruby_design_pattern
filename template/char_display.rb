require './abstract_display'

class CharDisplay < AbstractDisplay
  attr_accessor :ch

  def initialize(ch)
    @ch = ch
  end

  def open
    puts "<<<<<<<<<<<<<<<<<"
  end

  def close
    puts ">>>>>>>>>>>>>>>>>"
  end

  def print
    puts @ch
  end
end
