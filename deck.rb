
# require

class Deck

  attr_accessor :distributed_cards

  RANKS = [*1..13]
  SUITS = %w{ Clubs Diamonds Hearts Spades }

  def initialize(distributed_cards = [])
    @distributed_cards = distributed_cards
  end

  #配る
  def distribute
    if @distributed_cards.length >= 52
      raise
    end
    num = RANKS.sample
    type =  SUITS.sample
    num_type = "#{num}:#{type}"
    if @distributed_cards.any?{|w| w == num_type}
      distribute
    else
      @distributed_cards << num_type
      return num_type

    end
  end

end
