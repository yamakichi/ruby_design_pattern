class SimpleWriter
  def initialize(path)
    @file = File.open(path, "w")
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

class WriterDecorator
  def initialize(real_writer)
    @real_writer = real_writer
  end

  def writer_line(line)
    @real_writer.write_line(line)
  end

  def pos
    @real_writer.pos
  end

  def rewind
    @reak_writer.rewind
  end

  def close
    @real_writer.close
  end
end

# 行番号出力昨日を装飾する(Decorator)
class NumberingWriter < WriterDecorator
  def initialize(real_writer)
    super(real_writer)
    @line_number = 1
  end

  def write_line(line)
    @real_writer.write_line("#{@line_number} : #{line}")
  end
end

class TimeStampingWriter < WriteDecorator
  def initialize(real_writer)
    super(real_writer)
  end

  def write_line(line)
    @real_writer.write_line("#{Time.new} : #{line}")
  end
end


f = NumberingWriter.new(SimpleWriter.new("09_test_data/file.txt"))
f.write_line("Hello out there")
f.close

f = TimeStampingWriter.new(SimpleWriter.new("09_test_data/file2.txt"))
f.write_line("Hello out there")
f.close

f = TimeStampingWriter.new(NumberingWriter.new(SimpleWriter.new("09_test_data_dir/file3.txt")))
f.write_line("Hello out there")
f.close
