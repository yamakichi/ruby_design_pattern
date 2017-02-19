require './builder'

class TextBuilder < Builder
  def initialize
    @buffer = []
  end

  def make_title(title)
    @buffer.push("=========================")
    @buffer.push("『#{title}』\n")
    @buffer.push("\n")
  end

  def make_string(str)
    @buffer.push("□#{str}\n")
    @buffer.push("\n")
  end

  def make_items(items)
    items.each do |item|
      @buffer.push(".#{item}\n")
    end
    @buffer.push("\n")
  end

  def close
    @buffer.push("=========================\n")
  end

  def get_result
    @buffer.to_s
  end
end
