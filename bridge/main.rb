require './display'
require './count_display'
require './string_display_imp'

class Main
  def execute
    d1 = Display.new(StringDisplayImp.new("Hello, Japan"))
    d2 = CountDisplay.new(StringDisplayImp.new("Hello, World"))
    d3 = CountDisplay.new(StringDisplayImp.new("Hello, Universe"))
    d1.display
    d2.display
    d3.display
    d3.multi_display(5)
  end
end

Main.new.execute
