require './char_display'
require './string_display'

class Main
  def execute
    d1 = CharDisplay.new("H")
    d2 = StringDisplay.new("Hello, world")
    d3 = StringDisplay.new("こんにちは")

    d1.display
    d2.display
    d3.display
  end
end


main = Main.new
main.execute
