class Trumpet
  def initialize(name)
    @name = name
  end

  def play
    puts "トランペットは #{@name} は音を奏でています"
  end
end

class InstrumentFactory
  def initialize(number_instruments)
    @instruments = []
    number_instruments.times do |i|
      instrument = new_instrument("楽器 #{i}")
      @instruments << instrument
    end
  end

  def ship_out
    @tmp = @instruments.dup
    @instruments = []
    @tmp
  end
end

class SaxophoneFactory < InstrumentFactory
  def new_instrument(name)
    Saxophone.new(name)
  end
end

class TrumpetFactory < InstrumentFactory
  def new_instrument(name)
    Trumpet.new(name)
  end
end
