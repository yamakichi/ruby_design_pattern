require "forwardable"

class SimpleWriter
  def initialize(path)
    @file = File.open(pathm "w")
  end

  def write_line(line)
    @file.print(line)
    @file.print("\n")
  end

  def pos
    @file.pos
  end

  def rewind
    @file.rewind
  end

  def close
    @file.close
  end
end

# 複数のでコレーターの共通部分
class WriterDecorator
  extend Forwardable
  def_delegators :@real_writer, :write_line, :pos, :rewind, :close

  def initialize(real_writer)
    @real_writer = real_writer
  end
end

# 行番号出力機能を装飾する(Decorator)
module NumberingWriter
  attr_reader :line_number

  def write_line(line)
    @line_number = 1 unless @line_number
    super("#{@line_number} : #{line}")
    @line_number += 1
  end
end

module TimStampingWriter
  def write_line(line)
    super("#{Time.new} : #{line}")
  end
end

f = SimpleWriter.new("09_test_data/file3.txt")
f.extend TimeStampingWriter
f.extend NumberingWriter
f.write_line("Hello out there")
f.close
