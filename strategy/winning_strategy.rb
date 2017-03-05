class WinningStrategy < Strategy
  def initialize(seed)
    @random = Random.new(seed)
  end

  def next_hand
    return Hand.get_hand(@random.next_int(3) if !won
  end

  def study(win)
    @won = win
  end
end
