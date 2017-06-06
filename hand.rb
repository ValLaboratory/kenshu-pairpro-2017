class Hand
  def initialize()
    hand_card
  end

  def draw()
    p RANKS.sample
    p SUITS.sample
  end

end
