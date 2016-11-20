# HTML形式に整形して出力(具体戦略)
HTML_FORMATTER = lambda do |context|
  puts "<html><head><title>#{context.title}</title></head></body>"
  context.text.each { |line| puts "<p>#{line}</p>" }
  puts "</body></html>"
end

# PlaneText形式(*****で囲う)に整形して出力(具体戦略)
PLANE_TEXT_FORMATTER = lambda do |context|
  puts "***** #{context.title} *****"
  context.text.each { |line| puts(line) }
end


class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(&formatter)
    @title = "report title"
    @text = %w(text1 text2 text3)
    @formatter = formatter
  end

  # ブロックに処理を委譲
  def output_report
    @formatter.call(self)
  end
end

report = Report.new(&HTML_FORMATTER)
report.output_report

#report.formatter = PLANE_TEXT_FORMATTER
#report.output_report
