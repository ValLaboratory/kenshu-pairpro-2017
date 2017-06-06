class Player
  def initialize(name)
    @name = name
    @hands = []
  end

  def add_card(card)
    @hands << card
  end

  def show_hands()
    cards = []
    @hands.each do |card|
      cards << card.show
    end
    cards.join(",")
  end

  attr_reader :name, :hands
end
