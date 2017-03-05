class Hand
  HANDVALUE_GUU = 0
  HANDVALUE_CHO = 1
  HANDVALUE_PAA = 2

  def initialize(value)
    @hand_value = value
  end

  def hand
    [
      Hand.new(HANDVALUE_GUU),
      Hand.new(HANDVALUE_CHO),
      Hand.new(HANDVALUE_PAA),
    ]
  end

  def name
    ["グー", "チョキ", "パー"]
  end

  def self.get_hand(value)
    hand[value]
  end

  def is_stronger_than(h)
    fight(h) == 1
  end

  def is_weaker_than(h)
    fight(h) == -1
  end

  def fight(h)
    if self == h
      0
    elsif (self.hand_value + 1) % 3 == h.hand_value
      1
    else
      -1
    end
  end
end
