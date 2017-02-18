require './print'

class Main
  def execute
    print = Print.new
    print.print_week
    print.print_strong
  end
end

main = Main.new
main.execute
