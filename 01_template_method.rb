class Report
  def initialize
    @title = "report title"
    @text = ["report line 1", "report line 2", "report line 3"]
  end

  # レポートの出力手順を規定
  def output_report
    output_start
    output_body
    output_end
  end

  # レポートの先頭に出力
  def output_start
  end

  def output_body
    @text.each do |line|
      output_line(line)
    end
  end

  def output_line(line)
    raise "Called abstract method !!"
  end

  def output_report
  end
end

class HTMLReport < Report
  def output_start
    puts "<html><head><title>#{@title}</title><body>"
  end

  def output_line(line)
    puts "<p>#{line}</p>"
  end

  def output_end
    puts "</body></html>"
  end
end

class PlainTextReport < Report
  def output_start
    puts "*** #{@title} *** "
  end

  def output_line(line)
    puts line
  end
end

html_report = HTMLReport.new
html_report.output_report


plain_text_report = PlainTextReport.new
plain_text_report.output_report
