class Hand
  def initialize()
    @my_cards = []
  end

  def draw(deck_card)
    distributed_card = deck_card.distribute
    @my_cards << distributed_card
  end

  def my_cards
    @my_cards
  end

  def sum_points
    splited = @my_cards.map{|w| w.split(":")}
    num_suplit = splited.map{|w| w[0].to_i}
    return num_suplit.sum
  end

end
