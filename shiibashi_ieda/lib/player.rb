require_relative "./deck.rb"

class Player
  def initialize
    @picked_cards = []
  end

  def pick(deck)
    picked = deck.pick()
    @picked_cards.push(picked)
  end

  def show
    p @picked_cards
    @picked_cards
  end



end
