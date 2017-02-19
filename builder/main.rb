require './text_builder'
require './director'

class Main
  def execute
    text_builder = TextBuilder.new
    director = Director.new(text_builder)
    director.construct
    result = text_builder.get_result
    puts result
  end
end


Main.new.execute
