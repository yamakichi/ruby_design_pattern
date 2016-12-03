
class Duck
  def initialize(name)
    @name = name
  end

  def eat
    puts "あひる #{@name} は食事中です"
  end
end

class Frog
  def initialize(name)
    @name = name
  end

  def eat
    puts "カエル #{@name} は食事中です"
  end
end

# 池(Creator)
class Pond
  def initialize(number_animals)
    @animals = []
    number_animals.times do |i|
      animal = new_animal("動物 #{1}")
      @animals << animal
    end
  end

  def simulate_one_day
    @animals.each { |animal| animal.eat }
  end
end


class DuckPond < Pond
  def new_animal(name)
    Duck.new(name)
  end
end

class FrogPond < Pond
  def new_animal(name)
    Frog.new(name)
  end
end

pond = DuckPond.new(3)
pond.simulate_one_day

pond = FrogPond.new(2)
pond.simulate_one_day
