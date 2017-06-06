class Player
  def initialize(name)
    @name = name
    @hands = []
  end

  def add_card(card)
    @hands << card
  end

  attr_reader :name, :hands
end
