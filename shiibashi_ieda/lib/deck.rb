require_relative "./card.rb"

class Deck
  def initialize()
    suits = ["heart","daiya","club","spade"]
    @cards = []
    13.times do |t|
      suits.each do |suit|
        @cards.push(Card.new(t+1,suit))
      end
    end
    @cards.shuffle!
  end

  def pick()
    @cards.shift()
  end

  attr_reader :cards

end
