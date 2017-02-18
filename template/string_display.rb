require './abstract_display'

class StringDisplay < AbstractDisplay
  attr_accessor :string, :width

  def initialize(string)
    @string = string
    @width = string.length.to_i
  end

  def open
    print_line
  end

  def close
    print_line
  end

  def print
    puts "| #{string} |"
  end

  def print_line
    puts "+"
    @width.times { puts "-" }
    puts "+"
  end
end
