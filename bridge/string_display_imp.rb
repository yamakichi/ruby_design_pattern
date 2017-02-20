require './display_imp'

class StringDisplayImp < DisplayImp
  def initialize(string)
    @string = string
    @width = string.length.to_i
  end

  def raw_open
    print_line
  end

  def raw_print
    puts "|#{@string}|"
  end

  def raw_close
    print_line
  end

  def print_line
    puts "+"
    puts "-"
    puts "+"
  end
end
